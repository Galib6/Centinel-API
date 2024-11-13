import { ApiProperty, ApiPropertyOptional } from "@nestjs/swagger";
import {
  IsBoolean,
  IsNotEmpty,
  IsNumber,
  IsOptional,
  IsString,
  MaxLength,
} from "class-validator";

export class CreateCategoriesDTO {
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
    type: "boolean",
    example: false,
  })
  @IsBoolean()
  isFeatured: boolean;

  @ApiPropertyOptional({
    type: "string",
    example: "metaTitle",
  })
  @IsOptional()
  @IsString()
  metaTitle: string;

  @ApiPropertyOptional({
    type: "string",
    example: "metaDescription",
  })
  @IsOptional()
  @IsString()
  metaDescription: string;

  @ApiPropertyOptional({
    type: "string",
    example: "metaKeywords",
  })
  @IsOptional()
  @IsString()
  metaKeywords: string;
}
