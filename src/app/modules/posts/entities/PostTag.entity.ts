import { BaseEntity } from "@src/app/base";
import { ENUM_TABLE_NAMES } from "@src/shared";
import { Column, Entity, ManyToOne, RelationId, Unique } from "typeorm";
import { Tag } from "../../tags/entities/tags.entity";
import { PostEntity } from "./post.entity";

@Entity(ENUM_TABLE_NAMES.POSTS_TAGS, { orderBy: { createdAt: "ASC" } })
@Unique(["tag", "post"])
export class PostTag extends BaseEntity {
  @Column({
    nullable: true,
  })
  orderPriority: string;

  @ManyToOne(() => Tag, (tag) => tag.postTags, { onDelete: "CASCADE" })
  tag: Tag;

  @RelationId((e: PostTag) => e.tag)
  tagId?: string;

  @ManyToOne(() => PostEntity, (post) => post.postTags, {
    onDelete: "CASCADE",
  })
  post: PostEntity;

  @RelationId((e: PostTag) => e.post)
  postId: string;
}
