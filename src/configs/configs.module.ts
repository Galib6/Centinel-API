import { Module } from "@nestjs/common";
import { ConfigModule } from "@nestjs/config";
import { ENV } from "@src/env";
import { join } from "path";
import environmentValidation from "./environment.validation";
import globalConfig from "./global.config";

@Module({
  imports: [
    ConfigModule.forRoot({
      isGlobal: true,
      envFilePath: join(
        process.cwd(),
        "environments",
        `${ENV.isDevelopment ? "development" : "production"}.env`
      ),
      load: [globalConfig],
      validationSchema: environmentValidation,
    }),
  ],
})
export class ConfigsModule {}
