import { Module } from "@nestjs/common";
import { ConfigModule } from "@nestjs/config";
import { JwtModule } from "@nestjs/jwt";
import { BcryptHelper } from "./bcrypt.helper";
import jwtConfig from "./jwt.config";
import { JWTHelper } from "./jwt.helper";
import { QueryHelper } from "./query.helper";

const HELPERS = [BcryptHelper, JWTHelper, QueryHelper];

@Module({
  imports: [
    ConfigModule.forFeature(jwtConfig),
    JwtModule.registerAsync(jwtConfig.asProvider()),
  ],
  providers: [...HELPERS],
  exports: [...HELPERS],
})
export class HelpersModule {}
