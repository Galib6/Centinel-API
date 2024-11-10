import { ApiProperty } from "@nestjs/swagger";
import { IsNumber, IsOptional } from "class-validator";

export class CreatePostTagsDto {
  @ApiProperty({
    type: "number",
    example: 1,
  })
  @IsNumber()
  @IsOptional()
  tagId: string;

  @ApiProperty({
    type: "number",
  })
  @IsNumber()
  @IsOptional()
  orderPriority: number;
}
