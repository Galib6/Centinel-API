import { Inject } from "@nestjs/common";
import { ConfigType } from "@nestjs/config";
import { ENUM_FILE_STORAGE } from "@src/shared/file.constants";
import {
  DataSource,
  EntitySubscriberInterface,
  EventSubscriber,
} from "typeorm";
import s3Configs from "../configs/S3.configs";
import { FileStorage } from "../entities/fileStorage.entity";

@EventSubscriber()
export class FileStorageSubscriber
  implements EntitySubscriberInterface<FileStorage>
{
  constructor(
    dataSource: DataSource,

    @Inject(s3Configs.KEY)
    private readonly s3Configuration: ConfigType<typeof s3Configs>
  ) {
    dataSource.subscribers.push(this);
  }

  listenTo() {
    return FileStorage;
  }

  async afterLoad(entity: FileStorage) {
    if (entity.storageType === ENUM_FILE_STORAGE.LOCAL) {
      entity.link = `${this.s3Configuration.fileStorageLocalBase}/${entity.folder}/${entity.fileName}`;
    }
  }
}
