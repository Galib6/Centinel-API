import { Controller, Get } from "@nestjs/common";
import { ApiBearerAuth, ApiOperation, ApiTags } from "@nestjs/swagger";
import { Auth } from "@src/app/decorators";
import { AuthType } from "@src/app/enums/auth-type.enum";

@ApiTags("Notifications")
@Controller("notifications")
@ApiBearerAuth()
@Auth(AuthType.None)
export class NotificationsController {
  @Get("get-description")
  @ApiOperation({
    summary: "Get Notification WebSocket Info",
    description:
      "Provides details about the WebSocket events and their payloads.",
  })
  getWebSocketInfo() {
    return {
      websocketUrl: "ws://localhost:8000",
      events: [
        {
          event: "initialNotifications",
          payload: {
            userId: 1,
            page: 1,
            limit: 10,
          },
        },
        {
          event: "notifications",
          description: "Emits fetched notifications",
        },
      ],
    };
  }

  // @Get()
  // async findAll(
  //   @Query() query: FilterNotificationDto
  // ): Promise<SuccessResponse | Notification[]> {
  //   return this.NotificationService.getNotificationsForUser(query, {
  //     relations: this.RELATIONS,
  //   });
  // }

  // @Get(":id")
  // async findOne(@Param("id", ParseIntPipe) id: string): Promise<Notification> {
  //   return this.NotificationService.findByIdBase(id, {
  //     relations: this.RELATIONS,
  //   });
  // }

  // @Post()
  // async createOne(
  //   @Body() Notification: CreateNotificationDto
  // ): Promise<Notification> {
  //   return this.NotificationService.createOneBase(Notification, {
  //     relations: this.RELATIONS,
  //   });
  // }

  // @Patch(":id")
  // async updateOne(
  //   @Param("id", ParseIntPipe) id: string,
  //   @Body() body: UpdateNotificationDto
  // ): Promise<Notification> {
  //   return this.NotificationService.updateOneBase(id, body, {
  //     relations: this.RELATIONS,
  //   });
  // }

  // @Delete()
  // async deleteOne(
  //   @Param("id", ParseIntPipe) id: string
  // ): Promise<SuccessResponse> {
  //   return this.NotificationService.deleteOneBase(id);
  // }

  // @Delete("soft/:id")
  // async softDeleteOne(@Param("id") id: string): Promise<SuccessResponse> {
  //   return this.NotificationService.softDeleteOneBase(id);
  // }
}
