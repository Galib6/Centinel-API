import { ApiProperty, PartialType } from "@nestjs/swagger";
import { IsBoolean, IsNumber, IsOptional } from "class-validator";
import { CreatePostTagsDto } from "./create.PostTags.dto";

export class UpdatePostTagDto extends PartialType(CreatePostTagsDto) {
  @ApiProperty({
    type: "string",
  })
  @IsNumber()
  @IsOptional()
  id?: string;

  @ApiProperty({
    type: "boolean",
    example: true,
  })
  @IsOptional()
  @IsBoolean()
  isDeleted: boolean;
}
