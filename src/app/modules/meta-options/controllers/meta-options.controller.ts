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

import { CreateMetaOptionsDto } from "../dtos/create.dto";
import { FilterPostDto } from "../dtos/filter.dto";
import { UpdateMetaOption } from "../dtos/update.dto";
import { MetaOption } from "../entities/meta-options.entity";
import { MetaOptionService } from "../services/meta-options.service";

@Controller("meta-options")
@ApiBearerAuth()
@Auth(AuthType.None)
export class MetaOptionController {
  RELATIONS = ["postTags", "postTags.tag"];

  constructor(private readonly metaOptionService: MetaOptionService) {}

  @Get()
  async findAll(
    @Query() query: FilterPostDto
  ): Promise<SuccessResponse | MetaOption[]> {
    return this.metaOptionService.findAllBase(query, {
      relations: this.RELATIONS,
    });
  }

  @Get(":id")
  async findOne(@Param("id", ParseIntPipe) id: string): Promise<MetaOption> {
    return this.metaOptionService.findByIdBase(id, {
      relations: this.RELATIONS,
    });
  }

  @Post()
  async createOne(@Body() body: CreateMetaOptionsDto): Promise<MetaOption> {
    return this.metaOptionService.createOneBase(body, {
      relations: this.RELATIONS,
    });
  }

  @Patch(":id")
  async updateOne(
    @Param("id", ParseIntPipe) id: string,
    @Body() body: UpdateMetaOption
  ): Promise<MetaOption> {
    return this.metaOptionService.updateOneBase(id, body, {
      relations: this.RELATIONS,
    });
  }

  @Delete()
  async deleteOne(
    @Param("id", ParseIntPipe) id: string
  ): Promise<SuccessResponse> {
    return this.metaOptionService.deleteOneBase(id);
  }

  @Delete("soft/:id")
  async softDeleteOne(@Param("id") id: string): Promise<SuccessResponse> {
    return this.metaOptionService.softDeleteOneBase(id);
  }
}
