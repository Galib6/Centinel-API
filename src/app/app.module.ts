import { CacheModule } from "@nestjs/cache-manager";
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
import { AuthModule } from "./modules/auth/auth.module";
import { CategoryModule } from "./modules/categories/categories.module";
import { CommentsModule } from "./modules/comments/comments.module";
import { GalleryModule } from "./modules/galleries/gallery.module";
import { MailModule } from "./modules/mail/mail.module";
import { MetaOptionsModule } from "./modules/meta-options/meta-options.module";
import { NotificationsModule } from "./modules/notifications/notifications.module";
import { PollsModule } from "./modules/polls/polls.module";
import { PostsModule } from "./modules/posts/posts.module";
import { TagsModule } from "./modules/tags/tags.module";
import { UserModule } from "./modules/user/user.module";
import { MessageGateway } from "./modules/video-conference/providers/SignalingGateway.service";

const MODULES = [
  DatabaseModule,
  HelpersModule,
  ServeStaticModule.forRoot({
    rootPath: join(process.cwd(), "uploads"),
  }),
  AuthModule,
  UserModule,
  PostsModule,
  TagsModule,
  MetaOptionsModule,
  GalleryModule,
  MailModule,
  CategoryModule,
  CommentsModule,
  PollsModule,
  NotificationsModule,
];
@Module({
  imports: [
    ...MODULES,
    ConfigsModule,
    GuardsModule,
    // RateLimitModule,
    CacheModule.register({
      isGlobal: true,
      max: 100,
      ttl: 30,
    }),
  ],
  controllers: [AppController],
  providers: [
    AppService,
    MessageGateway,
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
    // consumer.apply(AuthMiddleware).forRoutes("*");
  }
}
