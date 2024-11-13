import { CacheInterceptor } from "@nestjs/cache-manager";
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
  UseInterceptors,
} from "@nestjs/common";
import { ApiBearerAuth } from "@nestjs/swagger";
import { Auth } from "@src/app/decorators";
import { AuthType } from "@src/app/enums/auth-type.enum";
import { SuccessResponse } from "@src/app/types";
import { MailService } from "../../mail/providers/mail.service";
import { CreatePostDto } from "../dtos/create.dto";
import { FilterPostDto } from "../dtos/filter.dto";
import { UpdatePostDto } from "../dtos/update.dto";
import { PostEntity } from "../entities/post.entity";
import { PostService } from "../services/posts.service";

@Controller("posts")
@ApiBearerAuth()
@Auth(AuthType.None)
@UseInterceptors(CacheInterceptor)
export class PostsController {
  RELATIONS = ["postTags", "postTags.tag", "metaOption"];

  constructor(
    private readonly postService: PostService,
    private readonly mailService: MailService
  ) {}

  @Get()
  async findAll(
    @Query() query: FilterPostDto
  ): Promise<SuccessResponse | PostEntity[]> {
    try {
      await this.mailService.sendUserWelcome({
        email: "asadullahalgalib81@gmail.com",
        firstName: "Galib",
        lastName: "Last",
      });
    } catch (err) {
      console.log(err);
    }
    return this.postService.findAllBase(query, { relations: this.RELATIONS });
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
  ): Promise<any> {
    return this.postService.updatePost(id, body, this.RELATIONS);
  }

  @Delete(":id")
  async deleteOne(
    @Param("id", ParseIntPipe) id: string
  ): Promise<SuccessResponse> {
    const isExist = await this.postService.isExist({ id });
    return this.postService.deleteOneBase(id);
  }

  @Delete("soft/:id")
  async softDeleteOne(@Param("id") id: string): Promise<SuccessResponse> {
    const isExist = await this.postService.isExist({ id });
    return this.postService.softDeleteOneBase(id);
  }
}
