import { ApiProperty } from "@nestjs/swagger";
import { IsJSON, IsNotEmpty } from "class-validator";

export class CreateMetaOptionsDto {
  @ApiProperty({
    type: "string",
    example: '{"sidebarENabled": true}',
  })
  @IsNotEmpty()
  @IsJSON()
  metaValue: string;
}
