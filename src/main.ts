import { Logger, ValidationPipe } from "@nestjs/common";
import { ConfigService } from "@nestjs/config";
import { NestFactory } from "@nestjs/core";
import { NestExpressApplication } from "@nestjs/platform-express";
import { json, urlencoded } from "body-parser";
import { join } from "path";
import { AppModule } from "./app/app.module";
import { ENV } from "./env";
import { createLogger } from "./logger";
import { setupSecurity } from "./security";
import { setupSwagger } from "./swagger";

const logger = new Logger();

async function bootstrap() {
  const app = await NestFactory.create<NestExpressApplication>(AppModule, {
    logger: ENV.isDevelopment
      ? createLogger()
      : ["error", "warn", "debug", "log", "verbose"],
  });

  // Obtain ConfigService instance
  const configService = app.get(ConfigService);

  app.setBaseViewsDir(join(process.cwd(), "views"));
  app.setViewEngine("hbs");

  // app.enableCors({
  //   origin: configService.get("corsAllowedOrigins"),
  // });

  app.use(urlencoded({ extended: true }));
  app.use(
    json({
      limit: "10mb",
    })
  );
  app.useGlobalPipes(
    new ValidationPipe({
      transform: true,
      whitelist: true,
      forbidNonWhitelisted: true,
    })
  );

  app.setGlobalPrefix(configService.get("global.apiPrefix"));

  setupSecurity(app);
  setupSwagger(app);

  await app.listen(configService.get("global.port"));
  logger.log(
    `🚀🚀🚀🚀 Application is running on: ${await app.getUrl()} 🚀🚀🚀🚀`
  );

  logger.log(
    `📖📖📖 Documentation is available on: ${await app.getUrl()}/docs 📖📖📖`
  );
}
bootstrap();
