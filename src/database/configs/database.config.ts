import { registerAs } from "@nestjs/config";

export default registerAs("database", () => ({
  host: process.env.DB_HOST,
  user: process.env.DB_USERNAME,
  password: process.env.DB_PASSWORD,
  port: parseInt(process.env.DB_PORT) || 5432,
  name: process.env.DB_DATABASE,
  synchronize: process.env.DB_SYNCHRONIZE === "true",
  autoLoadEntities: process.env.DATABASE_AUTOLOAD === "true",
  logging: process.env.DB_LOGGING === "true",
}));
