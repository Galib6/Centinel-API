import { ApiProperty } from "@nestjs/swagger";
import { IsNumber, IsOptional } from "class-validator";

export class CreatePostTagsDto {
  @ApiProperty({
    type: "string",
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
