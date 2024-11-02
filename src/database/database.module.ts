import { Module } from "@nestjs/common";
import { ConfigModule, ConfigService } from "@nestjs/config";
import { TypeOrmModule } from "@nestjs/typeorm";
import databaseConfig from "./configs/database.config";

@Module({
  imports: [
    ConfigModule.forFeature(databaseConfig),
    TypeOrmModule.forRootAsync({
      imports: [ConfigModule],
      inject: [ConfigService],
      useFactory: (configService: ConfigService) => ({
        type: "postgres",
        autoLoadEntities: configService.get("database.autoLoadEntities"),
        synchronize: configService.get("database.synchronize"),
        port: configService.get("database.port"),
        username: configService.get("database.user"),
        password: configService.get("database.password"),
        host: configService.get("database.host"),
        database: configService.get("database.name"),
      }),
    }),
  ],
})
export class DatabaseModule {}
