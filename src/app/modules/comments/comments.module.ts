import { Module } from "@nestjs/common";
import { TypeOrmModule } from "@nestjs/typeorm";
import { CommentsController } from "./controllers/comments.controller";
import { Comment } from "./entities/comments.entity";
import { CommentsService } from "./services/comments.service";

const modules = [];
const entities = [Comment];
const services = [CommentsService];
const subscribers = [];
const controllers = [CommentsController];
const webControllers = [];

@Module({
  imports: [TypeOrmModule.forFeature(entities), ...modules],
  providers: [...services, ...subscribers],
  exports: [...services, ...subscribers],
  controllers: [...controllers, ...webControllers],
})
export class CommentsModule {}
