import { Module } from "@nestjs/common";
import { TypeOrmModule } from "@nestjs/typeorm";
import { PollsController } from "./controllers/polls.controller";
import { Poll } from "./entities/polls.entity";
import { PollOption } from "./entities/pollsOptions.entity";
import { PollsService } from "./services/polls.service";

const modules = [];
const entities = [Poll, PollOption];
const services = [PollsService];
const subscribers = [];
const controllers = [PollsController];
const webControllers = [];

@Module({
  imports: [TypeOrmModule.forFeature(entities), ...modules],
  providers: [...services, ...subscribers],
  exports: [...services, ...subscribers],
  controllers: [...controllers, ...webControllers],
})
export class PollsModule {}
