import { registerAs } from "@nestjs/config";

export default registerAs("global", () => ({
  port: process.env.PORT,
  appEnvMode: process.env.APP_ENV,
  nodeEnv: process.env.NODE_ENV,
  apiPrefix: process.env.API_PREFIX,
  apiBaseUrl: process.env.API_BASE_URL,
  apiVersion: process.env.API_VERSION,
  apiTitle: process.env.API_TITLE,
  apiDescription: process.env.API_DESCRIPTION,

  corsAllowedOrigins: process.env.CORS_ALLOWED_ORIGINS.split(","),
  rateLimitTtl: parseInt(process.env.RATE_LIMIT_TTL, 10),
  rateLimitMax: parseInt(process.env.RATE_LIMIT_MAX, 10),

  logFolder: process.env.LOG_FOLDER,

  otpExpiresIn: parseInt(process.env.OTP_EXPIRES_IN, 10),

  /**SMTP */
  smtpHost: process.env.SMTP_HOST,
  smtpPort: process.env.SMTP_PORT,
  smtpUserName: process.env.SMTP_USERNAME,
  smtpPassword: process.env.SMTP_PASSWORD,
}));
