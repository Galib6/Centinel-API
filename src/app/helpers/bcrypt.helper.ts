import { Inject, Injectable } from "@nestjs/common";
import { ConfigType } from "@nestjs/config";
import * as bcrypt from "bcrypt";
import jwtConfig from "./jwt.config";

@Injectable()
export class BcryptHelper {
  constructor(
    @Inject(jwtConfig.KEY)
    private readonly config: ConfigType<typeof jwtConfig>,
  ) {}
  public hash(plainText: string, saltRounds: number = this.config.saltRound) {
    return bcrypt.hash(plainText, saltRounds);
  }

  public compareHash(plainText: string, hashString: string) {
    return bcrypt.compare(plainText, hashString);
  }
}
