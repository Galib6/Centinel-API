import { Body, Controller, Post } from "@nestjs/common";
import { ApiTags } from "@nestjs/swagger";
import { ActiveUser, Auth } from "@src/app/decorators";
import { IActiveUser } from "@src/app/decorators/active-user.decorator";
import { AuthType } from "@src/app/enums/auth-type.enum";
import {
  ChangePasswordDTO,
  LoginDTO,
  RefreshTokenDTO,
  RegisterDTO,
  ResetPasswordDTO,
  VerifyResetPasswordDTO,
} from "../dtos";
import { AuthService } from "../services/auth.service";

@ApiTags("Auth")
// @ApiBearerAuth()
@Controller("auth")
export class AuthController {
  constructor(private readonly service: AuthService) {}

  @Auth(AuthType.None)
  @Post("login")
  async loginUser(@Body() body: LoginDTO) {
    return this.service.loginUser(body);
  }

  @Post("register")
  async registerUser(@Body() body: RegisterDTO) {
    return this.service.registerUser(body);
  }

  @Post("refresh-token")
  async refreshToken(@Body() body: RefreshTokenDTO) {
    return this.service.refreshToken(body);
  }

  @Post("reset-password-request")
  async resetPassword(@Body() body: ResetPasswordDTO) {
    return this.service.resetPassword(body);
  }

  @Post("reset-password-verify")
  async verifyPassword(@Body() body: VerifyResetPasswordDTO) {
    return this.service.verifyResetPassword(body);
  }

  @Post("change-password")
  async changePassword(
    @Body() body: ChangePasswordDTO,
    @ActiveUser() authUser: IActiveUser,
  ) {
    return this.service.changePassword(body, authUser);
  }
}
