import {
  BadRequestException,
  Injectable,
  NotFoundException,
} from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { BaseService } from "@src/app/base";
import { EntityManagerUtil } from "@src/app/common/utils/EntityManager.utils";
import { asyncForEach } from "@src/shared";
import { DataSource, Repository } from "typeorm";
import { CreateTagDto } from "../../tags/dtos/create.dto";
import { TagsService } from "../../tags/services/tags.service";
import { CreatePostDto } from "../dtos/create.dto";
import { UpdatePostDto } from "../dtos/update.dto";
import { UpdatePostTagDto } from "../dtos/update.PostTags.dto";
import { PostEntity } from "../entities/post.entity";
import { PostTag } from "../entities/PostTag.entity";
import { PostTagService } from "./PostTags.service";

@Injectable()
export class PostService extends BaseService<PostEntity> {
  constructor(
    @InjectRepository(PostEntity)
    public readonly _repo: Repository<PostEntity>,

    private readonly dataSource: DataSource,

    private readonly tagsService: TagsService,

    private readonly postTagService: PostTagService
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
          const isExists = await this.tagsService.isExist(tag);

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

  async updatePost(id: string, body: UpdatePostDto, relations: string[]) {
    const { postTags, metaOption, ...createPost } = body;
    const queryRunner = this.dataSource.createQueryRunner();
    await queryRunner.connect();
    await queryRunner.startTransaction();

    try {
      const existingPost = await queryRunner.manager.findOne(PostEntity, {
        where: {
          id,
        },
        relations: ["metaOption"],
      });

      if (!existingPost) {
        throw new NotFoundException();
      }

      /**updating meta options and others start */
      const updatedData = Object.assign(existingPost, createPost);
      const updatedMetaOption = {
        metaValue:
          body.metaOption?.metaValue ?? updatedData?.metaOption?.metaValue,
      };

      updatedData.metaOption = updatedMetaOption;
      await queryRunner.manager.save(PostEntity, updatedData);
      /**updating meta options and others end */

      /**Updating tags for post start */
      if (postTags && postTags.length) {
        /**filtering new update and deleted items */
        const deleteItems = postTags.filter((item) => item.isDeleted) || [];
        const updateItems =
          postTags.filter((item) => item.isDeleted === false) || [];
        const newItems =
          postTags.filter((item) => item["isDeleted"] === undefined) || [];

        //delete action
        if (deleteItems.length) {
          await asyncForEach(
            deleteItems,
            async (deletedItem: UpdatePostTagDto) => {
              await this.postTagService.isExist({
                id: deletedItem.id,
              });

              await queryRunner.manager.delete(PostTag, { id: deletedItem.id });
            }
          );
        }

        //update action
        if (updateItems.length) {
          await asyncForEach(
            updateItems,
            async (updateItem: UpdatePostTagDto) => {
              const isExist = await this.postTagService.isExist({
                id: updateItem.id,
              });
              if (isExist) {
                await queryRunner.manager.update(
                  PostTag,
                  { id: updateItem.id },
                  {
                    post: id as any,
                    orderPriority: updateItem.orderPriority as any,
                    tag: updateItem.tagId as any,
                  }
                );
              }
            }
          );
        }

        //new create action
        if (newItems.length) {
          await asyncForEach(newItems, async (newItem: UpdatePostTagDto) => {
            await queryRunner.manager.save(
              Object.assign(new PostTag(), {
                tag: newItem?.id,
                post: newItem?.id,
                orderPriority: newItem?.orderPriority,
              })
            );
          });
        }
      }

      /**Updating tags for post end */

      await queryRunner.commitTransaction();
      await queryRunner.release();
    } catch (error) {
      await queryRunner.rollbackTransaction();
      await queryRunner.release();

      throw new BadRequestException(error);
    }

    return await this.findByIdBase(id, { relations: relations });
  }

  async updatePostWithEntityUtil(
    id: string,
    body: UpdatePostDto,
    relations: string[]
  ) {
    const { postTags, metaOption, ...createPost } = body;
    const queryRunner = this.dataSource.createQueryRunner();
    await queryRunner.connect();
    await queryRunner.startTransaction();

    try {
      const existingPost = await queryRunner.manager.findOne(PostEntity, {
        where: {
          id,
        },
        relations,
      });
      if (!existingPost) {
        throw new NotFoundException();
      }
      delete existingPost.postTags;
      const updatedData = Object.assign(existingPost, createPost);

      const updatedMetaOption = {
        metaValue:
          body.metaOption?.metaValue ?? updatedData?.metaOption?.metaValue,
      };
      updatedData.metaOption = updatedMetaOption;

      await queryRunner.manager.save(PostEntity, updatedData);

      // Use the EntityManagerUtil for postTags operations
      if (postTags && postTags.length) {
        const entityManagerUtil = new EntityManagerUtil<
          PostTag,
          UpdatePostTagDto
        >(
          queryRunner,
          PostTag,
          this.postTagService.isExist.bind(this.postTagService)
        );

        await entityManagerUtil.processEntities(postTags, {
          getDeleteCondition: (item) => item.isDeleted === true,
          getUpdateCondition: (item) => item.isDeleted === false,
          createEntity: (item) =>
            Object.assign(new PostTag(), {
              post: id,
              tag: item.tagId,
              orderPriority: item.orderPriority,
            }),
          updateEntityFields: (item) => ({
            orderPriority: item.orderPriority as any,
            tag: item.tagId as any,
          }),
          parentIdField: "post",
          parentId: id,
        });
      }

      await queryRunner.commitTransaction();
      await queryRunner.release();
    } catch (error) {
      await queryRunner.rollbackTransaction();
      await queryRunner.release();
      throw new BadRequestException(error);
    }

    return {};
  }
}
