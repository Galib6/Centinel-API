import { BaseEntity } from "@src/app/base";
import { ENUM_COLUMN_TYPES, ENUM_TABLE_NAMES } from "@src/shared";
import { Column, Entity, ManyToOne, OneToMany, RelationId } from "typeorm";

@Entity(ENUM_TABLE_NAMES.COMMENTS, { orderBy: { createdAt: "DESC" } })
export class Comment extends BaseEntity {
  public static readonly SEARCH_TERMS: string[] = ["title"];

  @Column({
    type: ENUM_COLUMN_TYPES.TEXT,
    nullable: false,
  })
  content?: string;

  @ManyToOne(() => Comment, (comment) => comment.children)
  parent?: Comment | string;

  @RelationId((comment: Comment) => comment.parent)
  parentId?: string;

  @OneToMany(() => Comment, (e) => e.parent)
  children?: Comment[];
}
