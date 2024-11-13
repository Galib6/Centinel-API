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
import { AuthType } from "@src/app/enums/auth-type.enum";
import { SuccessResponse } from "@src/app/types";

import { IActiveUser } from "@src/app/decorators/active-user.decorator";
import { CreateCategoriesDTO } from "../dtos/create.dto";
import { FilterCategoryDto } from "../dtos/filter.dto";
import { UpdateTagDto } from "../dtos/update.dto";
import { Category } from "../entities/categories.entity";
import { CategoriesService } from "../services/categories.service";

@ApiTags("Categories")
@Controller("categories")
@ApiBearerAuth()
@Auth(AuthType.Bearer)
export class CategoriesController {
  RELATIONS = [];

  constructor(private readonly categoryService: CategoriesService) {}

  @Get()
  async findAll(
    @Query() query: FilterCategoryDto
  ): Promise<SuccessResponse | Category[]> {
    return this.categoryService.findAllBase(query, {
      relations: this.RELATIONS,
    });
  }

  @Get(":id")
  async findOne(@Param("id", ParseIntPipe) id: string): Promise<Category> {
    return this.categoryService.findByIdBase(id, { relations: this.RELATIONS });
  }

  @Post()
  async createOne(
    @Body() body: CreateCategoriesDTO,
    @ActiveUser() activeUser: IActiveUser
  ): Promise<Category> {
    return this.categoryService.createOneBase(
      { ...body, createdBy: activeUser.id as any },
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
  ): Promise<Category> {
    return this.categoryService.updateOneBase(
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
    return this.categoryService.deleteOneBase(id);
  }

  @Delete("soft/:id")
  async softDeleteOne(@Param("id") id: string): Promise<SuccessResponse> {
    return this.categoryService.softDeleteOneBase(id);
  }

  @Get("/by-slug/:slug")
  async findBySlug(@Param("slug") slug: string): Promise<Category> {
    return this.categoryService.findBySlug(slug);
  }
}
