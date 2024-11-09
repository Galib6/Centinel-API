import { BaseEntity } from "@src/app/base";
import { ENUM_COLUMN_TYPES, ENUM_TABLE_NAMES } from "@src/shared";
import { Column, Entity, OneToMany } from "typeorm";
import { PostTag } from "../../posts/entities/PostTag.entity";

@Entity(ENUM_TABLE_NAMES.TAGS, { orderBy: { createdAt: "DESC" } })
export class Tag extends BaseEntity {
  public static readonly SEARCH_TERMS: string[] = [];

  @Column({
    type: ENUM_COLUMN_TYPES.VARCHAR,
    nullable: false,
    length: 256,
  })
  name: string;

  @Column({
    type: ENUM_COLUMN_TYPES.VARCHAR,
    nullable: false,
    unique: true,
  })
  slug: string;

  @Column({
    type: ENUM_COLUMN_TYPES.VARCHAR,
    length: 1024,
  })
  description: string;

  @Column({
    type: ENUM_COLUMN_TYPES.VARCHAR,
    nullable: false,
    length: 1024,
  })
  featuredImageUrl?: string;

  @OneToMany((t) => PostTag, (postTags) => postTags.tag)
  postTags?: PostTag[];
}
