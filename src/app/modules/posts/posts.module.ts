import { Module } from "@nestjs/common";
import { TypeOrmModule } from "@nestjs/typeorm";
import { TagsModule } from "../tags/tags.module";
import { PostsController } from "./controllers/posts.controller";
import { PostEntity } from "./entities/post.entity";
import { PostTag } from "./entities/PostTag.entity";
import { PostService } from "./services/posts.service";
import { PostTagService } from "./services/PostTags.service";

const modules = [TagsModule];
const entities = [PostEntity, PostTag];
const services = [PostService, PostTagService];
const subscribers = [];
const controllers = [PostsController];
const webControllers = [];

@Module({
  imports: [TypeOrmModule.forFeature(entities), ...modules],
  providers: [...services, ...subscribers],
  exports: [...services, ...subscribers],
  controllers: [...controllers, ...webControllers],
})
export class PostsModule {}
