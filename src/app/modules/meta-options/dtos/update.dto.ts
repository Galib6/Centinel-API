import { ApiProperty, PartialType } from "@nestjs/swagger";
import { IsString } from "class-validator";
import { CreateMetaOptionsDto } from "./create.dto";

export class UpdateMetaOption extends PartialType(CreateMetaOptionsDto) {
  @ApiProperty({
    type: "string",
    example: 1,
  })
  @IsString()
  id?: string;
}
