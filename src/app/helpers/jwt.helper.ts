import {
  ForbiddenException,
  Inject,
  Injectable,
  UnauthorizedException,
} from "@nestjs/common";
import { ConfigType } from "@nestjs/config";
import { JwtService } from "@nestjs/jwt";
import * as OtpUtil from "otp-without-db";
import { GenericObject } from "../types";
import jwtConfig from "./jwt.config";

@Injectable()
export class JWTHelper {
  constructor(
    private readonly jwtService: JwtService,

    @Inject(jwtConfig.KEY)
    private readonly jwtConfiguration: ConfigType<typeof jwtConfig>,
  ) {}

  // public sign(payload: GenericObject, options: GenericObject) {
  //   return sign(payload, this.config.secret, options);
  // }

  public async signToken<T extends object | Buffer>(
    expiresIn: string,
    payload?: T,
  ) {
    return await this.jwtService.signAsync(payload, {
      audience: this.jwtConfiguration.audience,
      issuer: this.jwtConfiguration.issuer,
      secret: this.jwtConfiguration.secret,
      expiresIn: expiresIn,
    });
  }

  public async verify(token: string) {
    try {
      return await this.jwtService.verifyAsync(token, this.jwtConfiguration);
    } catch (error) {
      throw new UnauthorizedException("Unauthorized Access Detected");
    }
  }

  public async verifyRefreshToken(token: string) {
    try {
      const decoded: any = await this.jwtService.verifyAsync(
        token,
        this.jwtConfiguration,
      );
      if (decoded.isRefreshToken) {
        return decoded;
      } else {
        throw new ForbiddenException("Unauthorized Access Detected");
      }
    } catch (error) {
      throw new ForbiddenException("Unauthorized Access Detected");
    }
  }

  public extractToken(headers: GenericObject) {
    let token: string =
      headers && headers.authorization ? headers.authorization : "";
    token = token.replace(/Bearer\s+/gm, "");
    return token;
  }

  public async makeAccessToken(data: GenericObject) {
    const payload = {
      ...data,
    };
    return await this.signToken<GenericObject>(
      this.jwtConfiguration.tokenExpireIn,
      payload,
    );
  }

  public async makeRefreshToken(data: GenericObject) {
    const payload = {
      ...data,
    };
    return await this.signToken<GenericObject>(
      this.jwtConfiguration.refreshTokenExpireIn,
      payload,
    );
  }

  public async makePermissionToken(data: GenericObject) {
    const payload = {
      ...data,
    };
    return await this.signToken<GenericObject>(
      this.jwtConfiguration.refreshTokenExpireIn,
      payload,
    );
  }

  public generateOtpHash(identifier: string, otp: number): string {
    return OtpUtil.createNewOTP(
      identifier,
      otp,
      this.jwtConfiguration.secret,
      5,
    );
  }

  public verifyOtpHash(
    identifier: string,
    otp: number,
    otpHash: string,
  ): boolean {
    return OtpUtil.verifyOTP(
      identifier,
      otp,
      otpHash,
      this.jwtConfiguration.secret,
    );
  }
}
