import { BaseEntity } from "@src/app/base";
import { ENUM_TABLE_NAMES } from "@src/shared";
import { Column, Entity, ManyToOne, RelationId } from "typeorm";
import { Tag } from "../../tags/entities/tags.entity";
import { PostEntity } from "./post.entity";

@Entity(ENUM_TABLE_NAMES.POSTS_TAGS, { orderBy: { createdAt: "ASC" } })
export class PostTag extends BaseEntity {
  @Column({
    nullable: true,
  })
  orderPriority: string;

  @ManyToOne(() => Tag, (tag) => tag.postTags, { onDelete: "NO ACTION" })
  tag: Tag;

  @RelationId((e: PostTag) => e.tag)
  tagId?: string;

  @ManyToOne(() => PostEntity, (post) => post.postTags, {
    onDelete: "NO ACTION",
  })
  post: PostEntity;

  @RelationId((e: PostTag) => e.post)
  postId: string;
}
