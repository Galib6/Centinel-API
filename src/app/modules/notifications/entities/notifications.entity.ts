import { BaseEntity } from "@src/app/base";
import { ENUM_COLUMN_TYPES, ENUM_TABLE_NAMES } from "@src/shared";
import { Column, Entity, JoinTable, ManyToMany, ManyToOne } from "typeorm";
import { Role } from "../../acl/entities/role.entity";
import { User } from "../../user/entities/user.entity";
import { NotificationTargetType } from "../enum/enum.notifications";

@Entity(ENUM_TABLE_NAMES.NOTIFICATIONS, { orderBy: { createdAt: "DESC" } })
export class Notification extends BaseEntity {
  public static readonly SEARCH_TERMS: string[] = [];

  @Column({ type: ENUM_COLUMN_TYPES.VARCHAR, length: 50, nullable: false })
  targetType: NotificationTargetType;

  @ManyToMany(() => Role, { cascade: true })
  @JoinTable({
    name: "notification_roles",
    joinColumn: { name: "notificationId", referencedColumnName: "id" },
    inverseJoinColumn: { name: "roleId", referencedColumnName: "id" },
  })
  roles: Role[];

  @ManyToOne(() => User, {
    onDelete: "CASCADE",
  })
  @JoinTable()
  user: User;

  @Column({ type: "text", nullable: false })
  message: string;
}
