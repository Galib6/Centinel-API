import { Controller, Get, Post, Sse } from "@nestjs/common";
import { ApiBearerAuth, ApiOperation, ApiTags } from "@nestjs/swagger";
import { ActiveUser, Auth } from "@src/app/decorators";
import { IActiveUser } from "@src/app/decorators/active-user.decorator";
import { AuthType } from "@src/app/enums/auth-type.enum";
import { Observable } from "rxjs";
import { NotificationType } from "../enum/enum.notifications";
import { NotificationsService } from "../services/notifications.service";
import { NotificationSSEGateway } from "../services/notifications.sse.gateway";

@Controller("notifications")
@ApiTags("Notifications")
@ApiBearerAuth()
@Auth(AuthType.Bearer)
export class NotificationsController {
  constructor(
    public readonly notificationService: NotificationsService,
    public readonly notificationSseGateway: NotificationSSEGateway
  ) {}

  @Get("get-description")
  @ApiOperation({
    summary: "Get Notification WebSocket Info",
    description:
      "Provides details about the WebSocket events and their payloads.",
  })
  getWebSocketInfo() {
    return {
      websocketUrl: "ws://localhost:8000",
      events: [
        {
          event: "initialNotifications",
          payload: {
            userId: 1,
            page: 1,
            limit: 10,
          },
        },
        {
          event: "notifications",
          description: "Emits fetched notifications",
        },
      ],
    };
  }

  @Sse("stream/:userId")
  streamNotifications(@ActiveUser() authUser: IActiveUser): Observable<any> {
    const userStream = this.notificationSseGateway.createStream(authUser?.id);
    return userStream.asObservable();
  }

  // @Get()
  // async findAll(
  //   @Query() query: FilterNotificationDto
  // ): Promise<SuccessResponse | Notification[]> {
  //   return this.NotificationService.getNotificationsForUser(query, {
  //     relations: this.RELATIONS,
  //   });
  // }

  // @Get(":id")
  // async findOne(@Param("id", ParseIntPipe) id: string): Promise<Notification> {
  //   return this.NotificationService.findByIdBase(id, {
  //     relations: this.RELATIONS,
  //   });
  // }

  @Post()
  async createOne(@ActiveUser() authUser: IActiveUser): Promise<any> {
    return this.notificationService.createUserBasedNotification(1, {
      message: "fdf",
      notificationType: NotificationType.REMINDER,
    });
  }

  // @Patch(":id")
  // async updateOne(
  //   @Param("id", ParseIntPipe) id: string,
  //   @Body() body: UpdateNotificationDto
  // ): Promise<Notification> {
  //   return this.NotificationService.updateOneBase(id, body, {
  //     relations: this.RELATIONS,
  //   });
  // }

  // @Delete()
  // async deleteOne(
  //   @Param("id", ParseIntPipe) id: string
  // ): Promise<SuccessResponse> {
  //   return this.NotificationService.deleteOneBase(id);
  // }

  // @Delete("soft/:id")
  // async softDeleteOne(@Param("id") id: string): Promise<SuccessResponse> {
  //   return this.NotificationService.softDeleteOneBase(id);
  // }
}
