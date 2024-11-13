import { MailerService } from "@nestjs-modules/mailer";
import { Injectable } from "@nestjs/common";
import { User } from "../../user/entities/user.entity";

@Injectable()
export class MailService {
  constructor(private readonly mailerService: MailerService) {}

  public async sendUserWelcome(user: User): Promise<void> {
    await this.mailerService.sendMail({
      to: user.email,
      subject: "Welcome to nestjs blog",
      template: "../template/welcome",
      context: {
        name: user.firstName,
        email: user.email,
        loginUrl: "Localhost:8000/docs",
      },
    });
  }
}
