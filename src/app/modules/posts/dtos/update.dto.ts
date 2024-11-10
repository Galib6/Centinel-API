import { ApiProperty, OmitType, PartialType } from "@nestjs/swagger";
import { Type } from "class-transformer";
import { IsArray, IsOptional, ValidateNested } from "class-validator";
import { CreateTagDto } from "../../tags/dtos/create.dto";
import { CreatePostDto } from "./create.dto";
import { UpdatePostTagDto } from "./update.PostTags.dto";

export class UpdatePostDto extends PartialType(
  OmitType(CreatePostDto, ["postTags"])
) {
  @ApiProperty({
    type: [CreateTagDto],
    example: [
      {
        id: 1,
        tagId: 1,
        isDeleted: true,
      },
      {
        id: 2,
        tagId: 2,
        orderPriority: 1,
        isDeleted: false,
      },
      {
        tagId: 2,
        orderPriority: 1,
      },
    ],
  })
  @IsOptional()
  @Type(() => UpdatePostTagDto)
  @IsArray()
  @ValidateNested()
  postTags: UpdatePostTagDto[];
}
