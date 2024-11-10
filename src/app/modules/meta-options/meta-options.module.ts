import { Module } from "@nestjs/common";
import { TypeOrmModule } from "@nestjs/typeorm";
import { TagsModule } from "../tags/tags.module";
import { MetaOptionController } from "./controllers/meta-options.controller";
import { MetaOption } from "./entities/meta-options.entity";
import { MetaOptionService } from "./services/meta-options.service";

const modules = [TagsModule];
const entities = [MetaOption];
const services = [MetaOptionService];
const subscribers = [];
const controllers = [MetaOptionController];
const webControllers = [];

@Module({
  imports: [TypeOrmModule.forFeature(entities), ...modules],
  providers: [...services, ...subscribers],
  exports: [...services, ...subscribers],
  controllers: [...controllers, ...webControllers],
})
export class MetaOptionsModule {}
