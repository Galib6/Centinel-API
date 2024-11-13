import { Module } from "@nestjs/common";
import { TypeOrmModule } from "@nestjs/typeorm";
import { CategoriesController } from "./controllers/categories.controller";
import { Category } from "./entities/categories.entity";
import { CategoriesService } from "./services/categories.service";

const modules = [];
const entities = [Category];
const services = [CategoriesService];
const subscribers = [];
const controllers = [CategoriesController];
const webControllers = [];

@Module({
  imports: [TypeOrmModule.forFeature(entities), ...modules],
  providers: [...services, ...subscribers],
  exports: [...services, ...subscribers],
  controllers: [...controllers, ...webControllers],
})
export class CategoryModule {}
