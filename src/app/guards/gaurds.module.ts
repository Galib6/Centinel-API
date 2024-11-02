import { Module } from "@nestjs/common";
import { ConfigModule } from "@nestjs/config";
import { APP_GUARD } from "@nestjs/core";
import { JwtModule } from "@nestjs/jwt";
import jwtConfig from "../helpers/jwt.config";
import { UserModule } from "../modules/user/user.module";
import { AccessTokenGuard } from "./access-token/access-token.guard";
import { AuthenticationGuard } from "./authentication/authentication.guard";
import { PermissionGuard } from "./permission/permission.guard";

@Module({
  imports: [
    // jwt access for token guard imports
    ConfigModule.forFeature(jwtConfig),
    JwtModule.registerAsync(jwtConfig.asProvider()),

    UserModule,
  ],
  providers: [
    {
      provide: APP_GUARD,
      useClass: AuthenticationGuard,
    },
    AccessTokenGuard,
    PermissionGuard,
  ],
})
export class GuardsModule {}
