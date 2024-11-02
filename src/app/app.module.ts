import { MiddlewareConsumer, Module, NestModule } from "@nestjs/common";
import { APP_FILTER, APP_INTERCEPTOR } from "@nestjs/core";
import { ServeStaticModule } from "@nestjs/serve-static";
import { ConfigsModule } from "@src/configs/configs.module";
import { DatabaseModule } from "@src/database/database.module";
import { join } from "path";
import { AppController } from "./app.controller";
import { AppService } from "./app.service";
import { ExceptionFilter } from "./filters";
import { GuardsModule } from "./guards/gaurds.module";
import { HelpersModule } from "./helpers/helpers.module";
import { ResponseInterceptor } from "./interceptors/response.interceptor";
import { AuthMiddleware } from "./middlewares";
import { AuthModule } from "./modules/auth/auth.module";
import { UserModule } from "./modules/user/user.module";

const MODULES = [
  DatabaseModule,
  HelpersModule,
  ServeStaticModule.forRoot({
    rootPath: join(process.cwd(), "uploads"),
  }),
  AuthModule,
  UserModule,
];
@Module({
  imports: [...MODULES, ConfigsModule, GuardsModule],
  controllers: [AppController],
  providers: [
    AppService,
    {
      provide: APP_FILTER,
      useClass: ExceptionFilter,
    },

    {
      provide: APP_INTERCEPTOR,
      useClass: ResponseInterceptor,
    },
  ],
})
export class AppModule implements NestModule {
  configure(consumer: MiddlewareConsumer) {
    consumer.apply(AuthMiddleware).forRoutes("*");
  }
}
