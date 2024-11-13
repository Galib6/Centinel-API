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
import { CreatePollDTO } from "../dtos/create.dto";
import { FilterPollDto } from "../dtos/filter.dto";
import { UpdateTagDto } from "../dtos/update.dto";
import { Poll } from "../entities/polls.entity";
import { PollsService } from "../services/polls.service";

@ApiTags("Poll")
@Controller("polls")
@ApiBearerAuth()
@Auth(AuthType.Bearer)
export class PollsController {
  RELATIONS = ["options"];

  constructor(private readonly PollsService: PollsService) {}

  @Get()
  async findAll(
    @Query() query: FilterPollDto
  ): Promise<SuccessResponse | Poll[]> {
    return this.PollsService.findAllBase(query, {
      relations: this.RELATIONS,
    });
  }

  @Get(":id")
  async findOne(@Param("id", ParseIntPipe) id: string): Promise<Poll> {
    return this.PollsService.findByIdBase(id, { relations: this.RELATIONS });
  }

  @Post()
  async createOne(
    @Body() body: CreatePollDTO,
    @ActiveUser() activeUser: IActiveUser
  ): Promise<Poll> {
    return this.PollsService.createOneBase(
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
  ): Promise<Poll> {
    return this.PollsService.updateOneBase(
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
    return this.PollsService.deleteOneBase(id);
  }

  @Delete("soft/:id")
  async softDeleteOne(@Param("id") id: string): Promise<SuccessResponse> {
    return this.PollsService.softDeleteOneBase(id);
  }

  @Get("/by-slug/:slug")
  async findBySlug(@Param("slug") slug: string): Promise<Poll> {
    return this.PollsService.findBySlug(slug);
  }
}
