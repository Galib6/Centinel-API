import { INestApplication } from "@nestjs/common";
import { ConfigService } from "@nestjs/config";
import rateLimit from "express-rate-limit";
import helmet from "helmet";

// const allowedOrigins = ENV.security.CORS_ALLOWED_ORIGINS;

export function setupSecurity(app: INestApplication): void {
  const configService = app.get(ConfigService);

  app.use(helmet());
  app.enableCors({
    origin: (origin, callback) => {
      if (
        !origin ||
        configService
          .get("global.corsAllowedOrigins")
          .some((o) => origin.startsWith(o))
      ) {
        callback(null, true);
      } else {
        callback(new Error("Origin not allowed by CORS"));
      }
    },
    methods: "GET,HEAD,PUT,PATCH,POST,DELETE,OPTIONS",
    credentials: true,
  });
  app.use(
    rateLimit({
      windowMs: configService.get("global.rateLimitTtl"),
      max: configService.get("global.rateLimitMax"),
      message:
        "Too many requests created from this IP, please try again after 5 minutes",
    }),
  );
}
