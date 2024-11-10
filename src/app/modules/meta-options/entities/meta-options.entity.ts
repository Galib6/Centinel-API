import { BaseEntity } from "@src/app/base";
import { ENUM_TABLE_NAMES } from "@src/shared";
import {
  Column,
  Entity,
  JoinColumn,
  OneToOne,
  PrimaryGeneratedColumn,
} from "typeorm";
import { PostEntity } from "../../posts/entities/post.entity";

@Entity(ENUM_TABLE_NAMES.META_OPTIONS, { orderBy: { createdAt: "DESC" } })
export class MetaOption extends BaseEntity {
  public static readonly SEARCH_TERMS: string[] = ["title"];

  @PrimaryGeneratedColumn()
  id?: string;

  @Column({
    type: "json",
    nullable: false,
  })
  metaValue: string;

  @OneToOne(() => PostEntity, {
    onDelete: "CASCADE",
  })
  @JoinColumn()
  post?: PostEntity;
}
