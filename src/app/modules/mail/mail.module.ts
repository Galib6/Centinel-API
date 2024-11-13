import { MailerModule } from "@nestjs-modules/mailer";
import { EjsAdapter } from "@nestjs-modules/mailer/dist/adapters/ejs.adapter";
import { Global, Module } from "@nestjs/common";
import { ConfigService } from "@nestjs/config";
import { TypeOrmModule } from "@nestjs/typeorm";
import { join } from "path";
import { MailService } from "./providers/mail.service";

const modules = [
  MailerModule.forRootAsync({
    inject: [ConfigService],
    useFactory: async (configService: ConfigService) => ({
      transport: {
        host: configService.get("global.smtpHost"),
        port: configService.get("global.smtpPort"),
        auth: {
          user: configService.get("global.smtpUserName"),
          pass: configService.get("global.smtpPassword"),
        },
        secure: false,
      },
      default: {
        from: "Your Name <asadullahalgalib81@gmail.com>",
      },
      template: {
        dir: join(__dirname, "templates"),
        adapter: new EjsAdapter(),
        options: {
          strict: false,
        },
      },
    }),
  }),
];
const entities = [];
const services = [MailService];
const subscribers = [];
const controllers = [];
const webControllers = [];

@Global()
@Module({
  imports: [TypeOrmModule.forFeature(entities), ...modules],
  providers: [...services, ...subscribers],
  exports: [...services, ...subscribers],
  controllers: [...controllers, ...webControllers],
})
export class MailModule {}
