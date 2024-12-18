import { ApiProperty, ApiPropertyOptional } from "@nestjs/swagger";
import { Type } from "class-transformer";
import {
  IsArray,
  IsEnum,
  IsJSON,
  IsNotEmpty,
  IsOptional,
  IsString,
  IsUrl,
  Matches,
  MaxLength,
  ValidateNested,
} from "class-validator";
import { CreateMetaOptionsDto } from "../../meta-options/dtos/create.dto";
import { MetaOption } from "../../meta-options/entities/meta-options.entity";
import { PostStatus } from "../enum/postStatus.enum";
import { PostType } from "../enum/postType.enum";
import { CreatePostTagsDto } from "./create.PostTags.dto";

export class CreatePostDto {
  @ApiProperty({
    type: "string",
    required: true,
  })
  @IsNotEmpty()
  @IsString()
  readonly title: string;

  @ApiProperty({
    type: "string",
    required: true,
    example: "page",
  })
  @IsNotEmpty()
  @IsEnum(PostType)
  readonly postType: PostType;

  @ApiProperty({
    type: "string",
    required: true,
  })
  @IsNotEmpty()
  @MaxLength(256)
  @Matches(/^[a-z0-9]+(?:-[a-z0-9]+)*$/, {
    message:
      "Slug can only contain lowercase alphanumeric characters and hyphens.",
  })
  readonly slug: string;

  @ApiProperty({
    type: "string",
    required: true,
    example: "published",
  })
  @IsNotEmpty()
  @IsEnum(PostStatus)
  readonly status: PostStatus;

  @ApiProperty({
    type: "number",
    required: true,
    example: 1,
  })
  @IsNotEmpty()
  readonly categoryId: string;

  @ApiProperty({
    type: "string",
    required: true,
  })
  @IsOptional()
  @IsString()
  readonly content?: string;

  @ApiPropertyOptional({
    description:
      "Serialized your JSON object else a validation error will be thrown",
    example: '{"message":"schema must be a json string"}',
    type: "string",
  })
  @IsOptional()
  @IsJSON()
  readonly schema?: string;

  @ApiPropertyOptional({
    description: "Featured Image URL",
    example: "https://example.com/image.jpg",
  })
  @IsUrl()
  @MaxLength(256)
  readonly featuredImageUrl?: string;

  @ApiPropertyOptional({
    type: [CreatePostTagsDto],
  })
  @IsArray()
  @ValidateNested({ each: true })
  @Type(() => CreatePostTagsDto)
  readonly postTags?: CreatePostTagsDto[];

  @ApiPropertyOptional({
    type: CreateMetaOptionsDto,
  })
  @IsNotEmpty()
  @Type(() => MetaOption)
  readonly metaOption?: MetaOption;
}
