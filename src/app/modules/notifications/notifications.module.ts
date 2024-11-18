import { Module } from "@nestjs/common";
import { TypeOrmModule } from "@nestjs/typeorm";
import { AclModule } from "../acl/acl.module";
import { UserModule } from "../user/user.module";
import { NotificationsController } from "./controllers/notifications.controller";
import { Notification } from "./entities/Notifications.entity";
import { UserNotification } from "./entities/userNotificationTable";
import { NotificationsService } from "./services/Notifications.service";
import { NotificationGateway } from "./services/notification.gateway";

const modules = [UserModule, AclModule];
const entities = [Notification, UserNotification];
const services = [NotificationsService, NotificationGateway];
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
