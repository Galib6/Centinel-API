import { ApiProperty } from "@nestjs/swagger";
import {
  IsBoolean,
  IsNotEmpty,
  IsNumber,
  IsString,
  MaxLength,
} from "class-validator";
import { Poll } from "../entities/polls.entity";

export class CreatePollOptionDTO {
  @ApiProperty({
    type: "string",
    title: "Title",
  })
  @IsString()
  @MaxLength(256)
  @IsNotEmpty()
  title: string;

  @ApiProperty({
    type: "number",
    example: 1,
  })
  @IsNumber()
  orderPriority: number;

  @ApiProperty({
    type: "boolean",
    example: true,
  })
  @IsBoolean()
  isActive: boolean;

  poll?: Poll;
}
