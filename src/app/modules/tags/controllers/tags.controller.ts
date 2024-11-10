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
import { ApiBearerAuth, ApiTags } from "@nestjs/swagger";
import { Auth } from "@src/app/decorators";
import { AuthType } from "@src/app/enums/auth-type.enum";
import { SuccessResponse } from "@src/app/types";
import { CreateTagDto } from "../dtos/create.dto";
import { FilterPostDto } from "../dtos/filter.dto";
import { UpdateTagDto } from "../dtos/update.dto";
import { Tag } from "../entities/tags.entity";
import { TagsService } from "../services/tags.service";

@ApiTags("Tags")
@Controller("tags")
@ApiBearerAuth()
@Auth(AuthType.None)
export class PostsController {
  RELATIONS = [];

  constructor(private readonly postService: TagsService) {}

  @Get()
  async findAll(
    @Query() query: FilterPostDto
  ): Promise<SuccessResponse | Tag[]> {
    return this.postService.findAllBase(query, { relations: this.RELATIONS });
  }

  @Get(":id")
  async findOne(@Param("id", ParseIntPipe) id: string): Promise<Tag> {
    return this.postService.findByIdBase(id, { relations: this.RELATIONS });
  }

  @Post()
  async createOne(@Body() post: CreateTagDto): Promise<Tag> {
    return this.postService.createOneBase(post, { relations: this.RELATIONS });
  }

  @Patch(":id")
  async updateOne(
    @Param("id", ParseIntPipe) id: string,
    @Body() body: UpdateTagDto
  ): Promise<Tag> {
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
