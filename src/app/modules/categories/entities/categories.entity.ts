import { BaseEntity } from "@src/app/base";
import { ENUM_COLUMN_TYPES, ENUM_TABLE_NAMES } from "@src/shared";
import { Column, Entity } from "typeorm";

@Entity(ENUM_TABLE_NAMES.CATEGORIES, { orderBy: { createdAt: "DESC" } })
export class Category extends BaseEntity {
  public static readonly SEARCH_TERMS: string[] = ["title"];

  @Column({
    type: ENUM_COLUMN_TYPES.VARCHAR,
    nullable: false,
  })
  title: string;

  @Column({
    type: ENUM_COLUMN_TYPES.VARCHAR,
    nullable: false,
    unique: true,
  })
  slug: string;

  @Column({
    type: ENUM_COLUMN_TYPES.TEXT,
    nullable: false,
  })
  description: string;

  @Column({
    type: ENUM_COLUMN_TYPES.INT,
    nullable: true,
  })
  orderPriority: number;

  @Column({
    type: ENUM_COLUMN_TYPES.BOOLEAN,
    nullable: true,
  })
  isActive: boolean;

  @Column({
    type: ENUM_COLUMN_TYPES.BOOLEAN,
    nullable: true,
  })
  isFeatured: boolean;

  @Column({
    type: ENUM_COLUMN_TYPES.VARCHAR,
    nullable: true,
  })
  metaTitle: string;

  @Column({
    type: ENUM_COLUMN_TYPES.TEXT,
    nullable: true,
  })
  metaDescription: string;

  @Column({
    type: ENUM_COLUMN_TYPES.VARCHAR,
    nullable: true,
    length: 256,
  })
  metaKeywords: string;
}
