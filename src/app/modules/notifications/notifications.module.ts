import { Module } from "@nestjs/common";
import { TypeOrmModule } from "@nestjs/typeorm";
import { AclModule } from "../acl/acl.module";
import { UserModule } from "../user/user.module";
import { NotificationsController } from "./controllers/notifications.controller";
import { Notification } from "./entities/notifications.entity";
import { UserNotification } from "./entities/userNotificationTable";
import { NotificationGateway } from "./services/notification.gateway";
import { NotificationsService } from "./services/notifications.service";
import { NotificationSSEGateway } from "./services/notifications.sse.gateway";

const modules = [UserModule, AclModule];
const entities = [Notification, UserNotification];
const services = [
  NotificationsService,
  NotificationGateway,
  NotificationSSEGateway,
];
// const subscribers = [];
const controllers = [NotificationsController];
// const webControllers = [];

@Module({
  imports: [TypeOrmModule.forFeature(entities), ...modules],
  providers: [...services],
  exports: [...services],
  controllers: [...controllers],
})
export class NotificationsModule {}
