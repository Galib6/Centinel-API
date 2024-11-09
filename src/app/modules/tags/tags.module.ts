import { Module } from "@nestjs/common";
import { TypeOrmModule } from "@nestjs/typeorm";
import { PostsController } from "./controllers/tags.controller";
import { Tag } from "./entities/tags.entity";
import { TagsService } from "./services/tags.service";

const modules = [];
const entities = [Tag];
const services = [TagsService];
const subscribers = [];
const controllers = [PostsController];
const webControllers = [];

@Module({
  imports: [TypeOrmModule.forFeature(entities), ...modules],
  providers: [...services, ...subscribers],
  exports: [...services, ...subscribers],
  controllers: [...controllers, ...webControllers],
})
export class TagsModule {}
