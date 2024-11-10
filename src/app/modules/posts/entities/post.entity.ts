import { BaseEntity } from "@src/app/base";
import { ENUM_COLUMN_TYPES, ENUM_TABLE_NAMES } from "@src/shared";
import { Column, Entity, OneToMany, OneToOne } from "typeorm";
import { MetaOption } from "../../meta-options/entities/meta-options.entity";
import { PostStatus } from "../enum/postStatus.enum";
import { PostType } from "../enum/postType.enum";
import { PostTag } from "./PostTag.entity";

@Entity(ENUM_TABLE_NAMES.POSTS, { orderBy: { createdAt: "DESC" } })
export class PostEntity extends BaseEntity {
  public static readonly SEARCH_TERMS: string[] = ["title"];

  @Column({
    type: ENUM_COLUMN_TYPES.VARCHAR,
    nullable: false,
    length: 512,
  })
  title: string;

  @Column({
    type: ENUM_COLUMN_TYPES.ENUM,
    enum: PostType,
    nullable: false,
  })
  postType: PostType;

  @Column({
    type: ENUM_COLUMN_TYPES.VARCHAR,
    length: 256,
    nullable: false,
    unique: true,
  })
  slug: string;

  @Column({
    type: ENUM_COLUMN_TYPES.ENUM,
    enum: PostStatus,
    nullable: false,
  })
  status: PostStatus;

  @Column({
    type: ENUM_COLUMN_TYPES.VARCHAR,
    nullable: true,
  })
  content?: string;

  @Column({
    type: ENUM_COLUMN_TYPES.TEXT,
    nullable: true,
  })
  schema?: string;

  @Column({
    type: ENUM_COLUMN_TYPES.VARCHAR,
    nullable: false,
    length: 1024,
  })
  featuredImageUrl?: string;

  @OneToMany((t) => PostTag, (postTags) => postTags.post, { cascade: true })
  postTags?: PostTag[];

  @OneToOne(() => MetaOption, (e) => e.post)
  metaOption?: MetaOption;
}
