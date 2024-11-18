import { forwardRef, Inject, Logger } from "@nestjs/common";
import {
  OnGatewayConnection,
  OnGatewayDisconnect,
  WebSocketGateway,
  WebSocketServer,
} from "@nestjs/websockets";
import { Server, Socket } from "socket.io";
import { NotificationsService } from "./Notifications.service";

@WebSocketGateway({ cors: true })
export class NotificationGateway
  implements OnGatewayConnection, OnGatewayDisconnect
{
  @WebSocketServer()
  server: Server;

  constructor(
    @Inject(forwardRef(() => NotificationsService)) // Use forwardRef() to avoid circular dependencies
    private readonly notificationService: NotificationsService
  ) {}

  private users = new Map<number, string>();
  private readonly logger = new Logger(NotificationGateway.name);

  async handleConnection(client: Socket): Promise<void> {
    const userId = Number(client.handshake.query.userId);

    if (!userId) {
      this.logger.warn(`Client connected without a userId`);
      client.disconnect();
      return;
    }

    this.users.set(userId, client.id);
    this.logger.log(`User ${userId} connected with socket ID ${client.id}`);

    const notifications =
      await this.notificationService.getNotificationsForUser({ userId });
    this.server.to(client.id).emit("initialNotifications", notifications);
  }

  handleDisconnect(client: Socket): void {
    const userId = [...this.users.entries()].find(
      ([, socketId]) => socketId === client.id
    )?.[0];

    if (userId) {
      this.users.delete(userId);
      this.logger.log(`User ${userId} disconnected`);
    } else {
      this.logger.warn(
        `Disconnected socket ${client.id} was not mapped to any user`
      );
    }
  }

  async sendUpdatedNotificationToUser(userId: number): Promise<void> {
    const socketId = this.users.get(userId);

    if (socketId) {
      const notifications =
        await this.notificationService.getNotificationsForUser({ userId });
      this.server.to(socketId).emit("updatedNotification", notifications);
      this.logger.log(`Updated notification sent to user ${userId}`);
    } else {
      this.logger.warn(`User ${userId} is not connected`);
    }
  }
}
