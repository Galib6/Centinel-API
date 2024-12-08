import {
  CanActivate,
  ExecutionContext,
  Inject,
  Injectable,
  UnauthorizedException,
} from "@nestjs/common";
import { ConfigType } from "@nestjs/config";
import { JwtService } from "@nestjs/jwt";
import { REQUEST_USER_KEY } from "@src/app/constants/keys.constants";
import jwtConfig from "@src/app/helpers/jwt.config";
import { Request } from "express";

@Injectable()
export class AccessTokenGuard implements CanActivate {
  constructor(
    /**
     * jwt service
     */
    private readonly jwtService: JwtService,

    /**
     * inject JWT configuration
     */
    @Inject(jwtConfig.KEY)
    private readonly jwtConfiguration: ConfigType<typeof jwtConfig>
  ) {}
  public async canActivate(context: ExecutionContext): Promise<boolean> {
    //Extract the request form execution context
    const request = context.switchToHttp().getRequest();
    console.log(request.headers.authorization);
    //extract token for header

    const token = this.extractRequestFormHeader(request);

    //validate the token
    if (!token) {
      throw new UnauthorizedException();
    }

    try {
      const payload = await this.jwtService.verifyAsync(
        token,
        this.jwtConfiguration
      );
      request[REQUEST_USER_KEY] = payload.user;
    } catch {
      throw new UnauthorizedException();
    }

    return true;
  }

  private extractRequestFormHeader(request: Request): string {
    const [, token] = request.headers.authorization?.split(" ") ?? [];
    return token;
  }
}
