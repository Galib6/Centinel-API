import { Module } from "@nestjs/common";
import { ConfigModule } from "@nestjs/config";
import * as path from "path";
import environmentValidation from "./environment.validation";
import globalConfig from "./global.config";

const ENV = process.env.NODE_ENV;

@Module({
  imports: [
    ConfigModule.forRoot({
      isGlobal: true,
      envFilePath: path.join(
        process.cwd(),
        "environments",
        // `${ENV || "production"}.env`
        "development.env",
      ),
      load: [globalConfig],
      validationSchema: environmentValidation,
    }),
  ],
})
export class ConfigsModule {}
