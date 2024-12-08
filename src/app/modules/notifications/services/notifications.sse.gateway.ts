import {
  forwardRef,
  Inject,
  Injectable,
  Logger,
  OnModuleDestroy,
  OnModuleInit,
} from "@nestjs/common";
import { Subject } from "rxjs";
import { NotificationsService } from "./notifications.service";

@Injectable()
export class NotificationSSEGateway implements OnModuleInit, OnModuleDestroy {
  private readonly logger = new Logger(NotificationSSEGateway.name);
  private readonly userStreams = new Map<number | string, Subject<any>>();

  constructor(
    @Inject(forwardRef(() => NotificationsService))
    private readonly notificationService: NotificationsService
  ) {}

  onModuleInit() {
    this.logger.log("NotificationGateway initialized");
  }

  onModuleDestroy() {
    this.userStreams.forEach((stream) => stream.complete());
    this.logger.log("NotificationGateway destroyed");
  }

  createStream(userId: string | number): Subject<any> {
    if (!this.userStreams.has(userId)) {
      this.userStreams.set(userId, new Subject());
      this.logger.log(`Stream created for user ${userId}`);
    }
    return this.userStreams.get(userId);
  }

  removeStream(userId: number): void {
    if (this.userStreams.has(userId)) {
      this.userStreams.get(userId).complete();
      this.userStreams.delete(userId);
      this.logger.log(`Stream removed for user ${userId}`);
    }
  }

  async sendUpdatedNotificationToUser(userId: number): Promise<void> {
    const stream = this.userStreams.get(userId);

    if (stream) {
      const notifications =
        await this.notificationService.getNotificationsForUser({ userId });
      stream.next({ event: "updatedNotification", data: notifications });
      this.logger.log(`Updated notification sent to user ${userId}`);
    } else {
      this.logger.warn(`No active stream for user ${userId}`);
    }
  }
}
