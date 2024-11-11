import { PutObjectCommand, S3Client } from "@aws-sdk/client-s3";
import { Inject, Injectable } from "@nestjs/common";
import { ConfigType } from "@nestjs/config";
import { IFileMeta } from "@src/app/interfaces";
import { SuccessResponse } from "@src/app/types";
import { asyncForEach } from "@src/shared";
import { ENUM_FILE_STORAGE } from "@src/shared/file.constants";
import * as fs from "fs";
import { join } from "path";
import s3Configs from "../configs/S3.configs";
import { FilterFiledDTO } from "../dtos";
import { FileStorage } from "../entities/fileStorage.entity";
import { FileStorageService } from "./fileStorage.service";

@Injectable()
export class FileUploadService {
  BASE = join(process.cwd(), "uploads/images");

  constructor(
    private readonly fileStorageService: FileStorageService,

    @Inject(s3Configs.KEY)
    private readonly s3Configuration: ConfigType<typeof s3Configs>
  ) {}

  async filterFiles(
    payload: FilterFiledDTO
  ): Promise<SuccessResponse | FileStorage[]> {
    if (payload.folder) {
      payload.folder = payload.folder.replace(/\+/g, "/").replace(" ", "");
      payload.folder = "images/" + payload.folder;
    }

    const files = await this.fileStorageService.findAllBase(payload);
    return files;
  }

  async uploadImage(files: IFileMeta[], body: { folder: string }) {
    if (body.folder) {
      body.folder = body.folder.replace(/\+/g, "/").replace(" ", "");
    }
    const uploaded = [];

    await asyncForEach(files, async (file: IFileMeta) => {
      let imgLink = null;

      if (this.s3Configuration.fileStorage === ENUM_FILE_STORAGE.LOCAL) {
        imgLink = await this.uploadToLocal({
          file,
          folder: body?.folder,
        });
      } else if (this.s3Configuration.fileStorage === ENUM_FILE_STORAGE.S3) {
        imgLink = await this.uploadToSpace({
          file,
          folder: body?.folder,
        });
      }
      if (imgLink) uploaded.push(imgLink);
    });

    return new SuccessResponse("Uploaded successfully", uploaded);
  }

  async uploadToSpace(data: {
    file?: IFileMeta;
    folder?: string;
  }): Promise<FileStorage> {
    const { file, folder = "others" } = data;

    // Return null if no file is provided
    if (!file) return null;

    const filePath = file.path;

    // Return null if the file path is not provided
    if (!filePath) return null;

    let fileUrl = null;

    try {
      // Step 1: Create an S3 client
      const s3 = new S3Client({
        region: this.s3Configuration.s3Region,
        credentials: {
          accessKeyId: this.s3Configuration.s3AccessKey,
          secretAccessKey: this.s3Configuration.s3SecretKey,
        },
        endpoint: this.s3Configuration.s3EndPoint,
      });

      // Step 2: Prepare the upload parameters
      const uploadParams = {
        Bucket: this.s3Configuration.s3Bucket,
        Key: `images/${folder}/${file.filename}`,
        Body: fs.createReadStream(filePath),
        ContentType: file.mimetype,
        ACL: "public-read" as any,
      };

      // Step 3: Upload file to S3
      const command = new PutObjectCommand(uploadParams);
      const uploaded = await s3.send(command);

      // Step 4: If upload is successful, get the file URL
      if (uploaded.ETag) {
        fileUrl = await this.getFileUrl(file.filename, folder);
      }

      // Step 5: Clean up the local file after upload
      try {
        await fs.unlinkSync(join(process.cwd(), filePath));
      } catch (error) {
        console.log("Error in file unlink");
      }

      // Step 6: Store the file metadata in the database
      if (fileUrl) {
        const fileStorage: FileStorage = {
          storageType: ENUM_FILE_STORAGE.S3,
          fileType: file.mimetype,
          folder: `images/${folder}`,
          fileName: file.filename,
          link: fileUrl,
        };

        return await this.fileStorageService.createOneBase(fileStorage);
      }

      // Return null if the file was not uploaded successfully
      return null;
    } catch (error) {
      console.error("Error during file upload:", error);
      return null;
    }
  }

  async getFileUrl(key: string, folder: string) {
    return {
      url: `https://${this.s3Configuration.s3Bucket}.sgp1.cdn.digitaloceanspaces.com/images/${folder}/${key}`,
    };
  }

  async uploadToLocal(data: {
    file: IFileMeta;
    folder?: string;
  }): Promise<FileStorage> {
    try {
      let { file, folder } = data;
      if (!folder) folder = "others";
      if (!file) return null;

      if (!fs.existsSync(join(this.BASE, folder))) {
        fs.mkdirSync(join(this.BASE, folder), {
          recursive: true,
        });
      }

      const sourceFilePath = join(process.cwd(), file.path);
      const destinationFilePath = `${this.BASE}/${folder}/${file.filename}`;

      await Promise.resolve(
        fs.copyFileSync(sourceFilePath, destinationFilePath)
      );
      await Promise.resolve(fs.unlinkSync(sourceFilePath));

      const filePath = "images/" + folder + "/" + file.filename;

      const fileStorage: FileStorage = {
        storageType: ENUM_FILE_STORAGE.LOCAL,
        fileType: file.mimetype,
        folder: "images/" + folder,
        fileName: file.filename,
      };

      const createdFile =
        await this.fileStorageService.createOneBase(fileStorage);

      return createdFile;
    } catch (error) {
      return null;
    }
  }

  async deleteFile(id: string): Promise<SuccessResponse> {
    return await this.fileStorageService.deleteOneBase(id);
  }
}
