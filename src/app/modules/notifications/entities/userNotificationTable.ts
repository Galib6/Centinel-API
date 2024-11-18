import { BaseEntity } from "@src/app/base";
import { ENUM_TABLE_NAMES } from "@src/shared";
import { Column, Entity, ManyToOne, RelationId } from "typeorm";
import { User } from "../../user/entities/user.entity";
import { Notification } from "./Notifications.entity";

@Entity(ENUM_TABLE_NAMES.USER_NOTIFICATIONS)
export class UserNotification extends BaseEntity {
  @ManyToOne(() => Notification, { onDelete: "CASCADE" })
  notification: Notification;

  @RelationId((e: UserNotification) => e.notification)
  notificationId: String;

  @ManyToOne(() => User, {
    onDelete: "CASCADE",
  })
  user: User;

  @RelationId((e: UserNotification) => e.user)
  userId: String;

  @Column({ type: "boolean", default: false })
  isViewed: boolean;

  @Column({ type: "timestamp", nullable: true })
  viewedAt: Date | null;
}
