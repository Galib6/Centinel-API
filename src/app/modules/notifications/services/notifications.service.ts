import {
  BadRequestException,
  GatewayTimeoutException,
  Injectable,
} from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { BaseService } from "@src/app/base";
import { IFindAllBaseOptions } from "@src/app/interfaces";
import { asyncForEach, getPaginationData } from "@src/shared";
import { DataSource, In, Repository } from "typeorm";
import { RoleService } from "../../acl/services/role.service";
import { User } from "../../user/entities/user.entity";
import { UserRole } from "../../user/entities/userRole.entity";
import { UserService } from "../../user/services/user.service";
import { UserRoleService } from "../../user/services/userRole.service";
import { Notification } from "../entities/Notifications.entity";
import { UserNotification } from "../entities/userNotificationTable";
import { NotificationTargetType } from "../enum/enum.notifications";
import { NotificationGateway } from "./notification.gateway";

@Injectable()
export class NotificationsService extends BaseService<Notification> {
  constructor(
    @InjectRepository(Notification)
    public readonly _repo: Repository<Notification>,

    @InjectRepository(UserNotification)
    public readonly userNotificationRepo: Repository<UserNotification>,

    private readonly userRoleService: UserRoleService,
    private readonly roleService: RoleService,
    private readonly userService: UserService,
    private readonly dataSource: DataSource,
    private readonly notificationGateway: NotificationGateway
  ) {
    super(_repo);
  }

  public async createRoleBasedNotification(
    roleTitles: string[],
    message: string
  ) {
    let res;
    try {
      const roles = await this.roleService.find({
        where: {
          title: In(roleTitles),
        },
      });

      res = await this.repo.save(
        Object.assign(new Notification(), {
          message,
          roles,
          targetType: NotificationTargetType.ROLE_BASED,
        })
      );

      const userRoles = await this.userRoleService.find({
        where: {
          role: {
            id: In(roles?.map((s) => s?.id)),
          },
        },
      });
      console.log(userRoles);
      await asyncForEach(userRoles, async (userRole: UserRole) => {
        await this.notificationGateway.sendUpdatedNotificationToUser(
          +userRole?.user
        );
      });
    } catch (err) {
      throw new GatewayTimeoutException();
    }

    return res;
  }

  public async createUserBasedNotification(userId: number, message: string) {
    const user = await this.userService.isExist({ id: userId as any });

    try {
      const res = await this.repo.save(
        Object.assign(new Notification(), {
          message,
          user,
          targetType: NotificationTargetType.USER_BASED,
        })
      );

      await this.notificationGateway.sendUpdatedNotificationToUser(userId);
      return res;
    } catch (err) {
      throw new GatewayTimeoutException();
    }
  }

  public async getNotificationsForUser(
    query: {
      userId: number;
      limit?: number;
      page?: number;
    },
    options?: IFindAllBaseOptions
  ): Promise<Notification[]> {
    const { skip, limit } = getPaginationData(query);

    const userRoles = (await this.userRoleService.findAllBase(
      {
        user: query?.userId as any,
      },
      {
        relations: ["role"],
        withoutPaginate: true,
      }
    )) as UserRole[];

    const roleAndUserBasedNotifications = await this.find({
      where: [
        {
          roles: {
            id: In(userRoles.map((userRole) => userRole.role.id)),
          },
        },
        {
          user: {
            id: query?.userId as any,
          },
        },
      ],
      relations: options?.relations,
      skip: skip,
      take: limit,
    });

    const userNotificationStatuses = await this.userNotificationRepo.find({
      where: {
        user: {
          id: query?.userId as any,
        },
        notification: {
          id: In(roleAndUserBasedNotifications?.map((s) => s?.id)),
        },
      },
      relations: ["notification"],
    });

    const NotificationList = roleAndUserBasedNotifications.map(
      (notification) => {
        delete notification.roles;
        delete notification.isActive;
        delete notification.user;
        delete notification.targetType;
        const notificationStatus = userNotificationStatuses?.find(
          (s) => s?.notification?.id === notification?.id
        );
        return {
          ...notification,
          isViewed: notificationStatus?.isViewed || false,
          viewedAt: notificationStatus?.viewedAt || null,
        };
      }
    );

    return NotificationList as any;
  }

  public async markNotificationAsViewed(userId: number) {
    // Check if an entry already exists
    const notifications = await this.getNotificationsForUser({ userId });

    if (Array.isArray(notifications) && notifications.length) {
      const queryRunner = this.dataSource.createQueryRunner();
      await queryRunner.connect();
      await queryRunner.startTransaction();

      try {
        await asyncForEach(notifications, async (notification) => {
          const isExist = await this.userNotificationRepo.findOne({
            where: { notification: { id: notification?.id } },
            relations: ["notification"],
          });
          if (!isExist?.id) {
            await this.userNotificationRepo.save(
              Object.assign(new UserNotification(), {
                notification: notification?.id as Notification,
                user: userId as User,
                isViewed: true,
                viewedAt: new Date(),
              })
            );
          } else {
            isExist.isViewed = true;
            isExist.viewedAt = new Date();
            await this.userNotificationRepo.save(
              Object.assign(new UserNotification(), isExist)
            );
          }
        });

        await queryRunner.commitTransaction();
        await queryRunner.release();
      } catch (err) {
        await queryRunner.rollbackTransaction();
        await queryRunner.release();
        throw new BadRequestException(err);
      }
    }
    return {} as any;
  }
}
