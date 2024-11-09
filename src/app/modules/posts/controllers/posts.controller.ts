import {
  Body,
  Controller,
  Delete,
  Get,
  Param,
  ParseIntPipe,
  Patch,
  Post,
  Query,
} from "@nestjs/common";
import { ApiBearerAuth } from "@nestjs/swagger";
import { Auth } from "@src/app/decorators";
import { AuthType } from "@src/app/enums/auth-type.enum";
import { SuccessResponse } from "@src/app/types";
import { CreatePostDto } from "../dtos/create.dto";
import { FilterPostDto } from "../dtos/filter.dto";
import { UpdatePostDto } from "../dtos/update.dto";
import { PostEntity } from "../entities/post.entity";
import { PostService } from "../services/posts.service";

@Controller("posts")
@ApiBearerAuth()
@Auth(AuthType.None)
export class PostsController {
  RELATIONS = ["postTags", "postTags.tag"];

  constructor(private readonly postService: PostService) {}

  @Get()
  async findAll(
    @Query() query: FilterPostDto
  ): Promise<SuccessResponse | PostEntity[]> {
    return this.postService.getPostsWithSortedTags();
  }

  @Get(":id")
  async findOne(@Param("id", ParseIntPipe) id: string): Promise<PostEntity> {
    return this.postService.findByIdBase(id, { relations: this.RELATIONS });
  }

  @Post()
  async createOne(@Body() post: CreatePostDto): Promise<PostEntity> {
    return this.postService.createPost(post, this.RELATIONS);
  }

  @Patch(":id")
  async updateOne(
    @Param("id", ParseIntPipe) id: string,
    @Body() body: UpdatePostDto
  ): Promise<PostEntity> {
    return this.postService.updateOneBase(id, body, {
      relations: this.RELATIONS,
    });
  }

  @Delete()
  async deleteOne(
    @Param("id", ParseIntPipe) id: string
  ): Promise<SuccessResponse> {
    return this.postService.deleteOneBase(id);
  }

  @Delete("soft/:id")
  async softDeleteOne(@Param("id") id: string): Promise<SuccessResponse> {
    return this.postService.softDeleteOneBase(id);
  }
}
