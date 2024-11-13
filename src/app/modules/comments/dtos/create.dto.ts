import { ApiProperty, ApiPropertyOptional } from "@nestjs/swagger";
import {
  IsNotEmpty,
  IsNumber,
  IsOptional,
  IsString,
  MaxLength,
} from "class-validator";

export class CreateCommentDTO {
  @ApiProperty({
    type: "string",
    title: "Content",
  })
  @IsString()
  @MaxLength(500)
  @IsNotEmpty()
  content?: string;

  @ApiPropertyOptional({
    type: "number",
    title: "Parent Comment ID",
  })
  @IsOptional()
  @IsNumber()
  parent?: string;
}
