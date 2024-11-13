import { ApiProperty, ApiPropertyOptional } from "@nestjs/swagger";
import { Type } from "class-transformer";
import {
  IsArray,
  IsBoolean,
  IsNotEmpty,
  IsNumber,
  IsOptional,
  IsString,
  MaxLength,
  ValidateNested,
} from "class-validator";
import { CreatePollOptionDTO } from "./create.pollOptions.dto";

export class CreatePollDTO {
  @ApiProperty({
    type: "string",
    title: "Title",
  })
  @IsString()
  @MaxLength(256)
  @IsNotEmpty()
  title: string;

  @ApiProperty({
    type: "string",
    example: "kj-sdf-sd-ff",
  })
  @MaxLength(255)
  @IsString()
  @IsNotEmpty()
  slug: string;

  @ApiPropertyOptional({
    title: "Description",
    description: "Description of the post",
    example: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
    type: "string",
  })
  @IsOptional()
  @IsString()
  description: string;

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

  @ApiProperty({
    type: [CreatePollOptionDTO],
  })
  @IsArray()
  @Type(() => CreatePollOptionDTO)
  @ValidateNested()
  options: CreatePollOptionDTO[];
}
