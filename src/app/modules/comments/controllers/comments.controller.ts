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
import { ActiveUser, Auth } from "@src/app/decorators";
import { IActiveUser } from "@src/app/decorators/active-user.decorator";
import { AuthType } from "@src/app/enums/auth-type.enum";
import { SuccessResponse } from "@src/app/types";
import { CreateCommentDTO } from "../dtos/create.dto";
import { FilterCommentDto } from "../dtos/filter.dto";
import { UpdateTagDto } from "../dtos/update.dto";
import { Comment } from "../entities/comments.entity";
import { CommentsService } from "../services/comments.service";

@ApiTags("Comments")
@Controller("Comments")
@ApiBearerAuth()
@Auth(AuthType.Bearer)
export class CommentsController {
  RELATIONS = ["children"];

  constructor(private readonly CommentService: CommentsService) {}

  @Get()
  async findAll(
    @Query() query: FilterCommentDto
  ): Promise<SuccessResponse | Comment[]> {
    return this.CommentService.findAllBase(query, {
      relations: this.RELATIONS,
    });
  }

  @Get(":id")
  async findOne(@Param("id", ParseIntPipe) id: string): Promise<Comment> {
    return this.CommentService.findByIdBase(id, { relations: this.RELATIONS });
  }

  @Post()
  async createOne(
    @Body() body: CreateCommentDTO,
    @ActiveUser() activeUser: IActiveUser
  ): Promise<Comment> {
    return this.CommentService.createOneBase(
      { ...body, createdBy: activeUser.id },
      {
        relations: this.RELATIONS,
      }
    );
  }

  @Patch(":id")
  async updateOne(
    @Param("id", ParseIntPipe) id: string,
    @Body() body: UpdateTagDto,
    @ActiveUser() activeUser: IActiveUser
  ): Promise<Comment> {
    return this.CommentService.updateOneBase(
      id,
      { ...body, updatedBy: activeUser.id as any },
      {
        relations: this.RELATIONS,
      }
    );
  }

  @Delete()
  async deleteOne(
    @Param("id", ParseIntPipe) id: string
  ): Promise<SuccessResponse> {
    return this.CommentService.deleteOneBase(id);
  }

  @Delete("soft/:id")
  async softDeleteOne(@Param("id") id: string): Promise<SuccessResponse> {
    return this.CommentService.softDeleteOneBase(id);
  }

  // @Get("/by-slug/:slug")
  // async findBySlug(@Param("slug") slug: string): Promise<Comment> {
  //   return this.CommentService.findBySlug(slug);
  // }
}
