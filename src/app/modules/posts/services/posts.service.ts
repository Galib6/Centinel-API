import { BadRequestException, Injectable } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { BaseService } from "@src/app/base";
import { asyncForEach } from "@src/shared";
import { DataSource, Repository } from "typeorm";
import { CreateTagDto } from "../../tags/dtos/create.dto";
import { TagsService } from "../../tags/services/tags.service";
import { CreatePostDto } from "../dtos/create.dto";
import { PostEntity } from "../entities/post.entity";
import { PostTag } from "../entities/PostTag.entity";

@Injectable()
export class PostService extends BaseService<PostEntity> {
  constructor(
    @InjectRepository(PostEntity)
    public readonly _repo: Repository<PostEntity>,

    private readonly dataSource: DataSource,

    private readonly tagsService: TagsService
  ) {
    super(_repo);
  }

  public async createPost(
    createPostDto: CreatePostDto,
    relations: string[]
  ): Promise<PostEntity> {
    const { tags, ...createPost } = createPostDto;

    const queryRunner = this.dataSource.createQueryRunner();
    await queryRunner.connect();
    await queryRunner.startTransaction();

    let createdUser;

    try {
      createdUser = await queryRunner.manager.save(
        Object.assign(new PostEntity(), createPost)
      );

      if (!createdUser) {
        throw new BadRequestException();
      }

      if (tags && tags.length) {
        await asyncForEach(tags, async (tag: CreateTagDto) => {
          await this.tagsService.isExist(tag);

          await queryRunner.manager.save(
            Object.assign(new PostTag(), {
              tag: tag,
              post: createdUser?.id,
            })
          );
        });
      }

      await queryRunner.commitTransaction();
      await queryRunner.release();
    } catch (error) {
      await queryRunner.rollbackTransaction();
      await queryRunner.release();

      throw new BadRequestException(error);
    }

    return createPost;
  }

  async getPostsWithSortedTags(order: "ASC" | "DESC" = "ASC") {
    const posts = await this._repo
      .createQueryBuilder("posts")
      .leftJoinAndSelect("posts.postTags", "postTags")
      // .leftJoinAndSelect("postTags.tag", "tag")
      // .orderBy("postTags.orderPriority", order)
      .getMany();

    return posts;
  }
}
