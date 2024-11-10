import { ApiProperty, ApiPropertyOptional } from "@nestjs/swagger";
import {
  IsBoolean,
  IsNotEmpty,
  IsOptional,
  IsString,
  IsUrl,
  Matches,
  MaxLength,
} from "class-validator";

export class CreateTagDto {
  @ApiProperty({
    type: "string",
    title: "Name of tags",
  })
  @IsString()
  @MaxLength(256)
  @IsNotEmpty()
  name: string;

  @ApiProperty({
    type: "string",
    example: "kj-sdf-sd-ff",
  })
  @MaxLength(255)
  @IsString()
  @Matches(/^[a-z0-9]+(?:-[a-z0-9]+)*$/, {
    message:
      "Slug can only contain lowercase alphanumeric characters and hyphens.",
  })
  slug: string;

  @ApiPropertyOptional({
    title: "description of the post",
    description: "description of post",
    example: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
    type: "string",
  })
  @IsOptional()
  @IsString()
  description: string;

  @ApiPropertyOptional({
    type: "string",
    example:
      "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg",
  })
  @IsOptional()
  @IsUrl()
  @MaxLength(1024)
  featuredImageUrl?: string;

  @IsOptional()
  @IsBoolean()
  isDeleted?: boolean;
}
