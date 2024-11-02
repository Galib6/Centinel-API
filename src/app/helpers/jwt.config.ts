import { registerAs } from "@nestjs/config";

export default registerAs("jwt", () => ({
  secret: process.env.JWT_SECRET,
  saltRound: parseInt(process.env.JWT_SALT_ROUNDS, 10),
  tokenExpireIn: process.env.JWT_EXPIRES_IN,
  refreshTokenExpireIn: process.env.JWT_REFRESH_TOKEN_EXPIRES_IN,
  audience: process.env.JWT_TOKEN_AUDIENCE,
  issuer: process.env.JWT_TOKEN_ISSUER,
}));
