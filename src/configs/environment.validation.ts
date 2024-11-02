import * as Joi from "joi";

export default Joi.object({
  PORT: Joi.number().integer().default(8000),
  APP_ENV: Joi.string()
    .valid("development", "production", "test", "staging")
    .default("development"),
  NODE_ENV: Joi.string()
    .valid("development", "production", "test", "staging")
    .default("development"),
  API_PREFIX: Joi.string().default("api/v1"),
  API_BASE_URL: Joi.string().uri().default("http://localhost:8000"),
  TZ: Joi.string().default("UTC"),

  // Swagger configuration
  API_VERSION: Joi.string().default("1.0.0"),
  API_TITLE: Joi.string().default("Centinel Api"),
  API_DESCRIPTION: Joi.string().default("Nest js learning"),

  // Database configuration
  DB_TYPE: Joi.string()
    .valid("postgres", "mysql", "sqlite")
    .default("postgres"),
  DB_HOST: Joi.string().required(),
  DB_PORT: Joi.number().default(5432),
  DB_USERNAME: Joi.string().required(),
  DB_PASSWORD: Joi.string().required(),
  DB_DATABASE: Joi.string().required(),
  DB_SYNCHRONIZE: Joi.boolean().default(true),
  DB_LOGGING: Joi.boolean().default(false),

  // Security configuration
  CORS_ALLOWED_ORIGINS: Joi.string().default(
    "http://localhost,http://localhost:4200",
  ),
  RATE_LIMIT_TTL: Joi.number().default(60000),
  RATE_LIMIT_MAX: Joi.number().default(100),

  // Logger configuration
  LOG_FOLDER: Joi.string().default("logs"),

  // JWT configuration
  JWT_SECRET: Joi.string().required(),
  JWT_SALT_ROUNDS: Joi.number().default(10),
  JWT_EXPIRES_IN: Joi.string().default("1d"),
  JWT_REFRESH_TOKEN_EXPIRES_IN: Joi.string().default("30d"),

  // Auth configuration
  OTP_EXPIRES_IN: Joi.number().default(5000),
});
