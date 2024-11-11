import { Module } from "@nestjs/common";
import { ConfigModule } from "@nestjs/config";
import { TypeOrmModule } from "@nestjs/typeorm";
import S3Configs from "./configs/S3.configs";
import { FileStorageController } from "./controllers/fileStorage.controller";
import { FileStorage } from "./entities/fileStorage.entity";
import { FileStorageService } from "./services/fileStorage.service";
import { FileUploadService } from "./services/fileUpload.service";
import { FileStorageSubscriber } from "./subscribers/fileStorage.subscriber";

const entities = [FileStorage];
const services = [FileUploadService, FileStorageService];
const subscribers = [FileStorageSubscriber];
const controllers = [FileStorageController];
const modules = [];

@Module({
  imports: [
    ...modules,
    TypeOrmModule.forFeature([...entities]),
    ConfigModule.forFeature(S3Configs),
  ],
  providers: [...services, ...subscribers],
  exports: [...services, ...subscribers],
  controllers: [...controllers],
})
export class GalleryModule {}
