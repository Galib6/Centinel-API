import { ApiProperty } from "@nestjs/swagger";
import { BaseDTO } from "@src/app/base";
import { Type } from "class-transformer";
import {
  IsNotEmpty,
  IsNumber,
  IsNumberString,
  IsOptional,
} from "class-validator";

export class FilterNotificationDto extends BaseDTO {
  @ApiProperty({
    type: Number,
    description: "Limit the number of results",
    default: 10,
    required: false,
  })
  @IsOptional()
  @IsNumberString()
  readonly limit: number = 10;

  @ApiProperty({
    type: Number,
    description: "The page number",
    default: 1,
    required: false,
  })
  @IsOptional()
  @IsNumberString()
  readonly page: number = 1;

  @ApiProperty({
    type: String,
    description: "The user id",
    default: 1,
    required: true,
  })
  @IsNotEmpty()
  @Type(() => Number)
  @IsNumber()
  readonly userId: number;

  // @ApiProperty({
  //   type: String,
  //   description: "The search term",
  //   required: false,
  // })
  // @IsOptional()
  // @IsString()
  // readonly searchTerm!: string;

  //   @ApiProperty({
  //     type: String,
  //     required: false,
  //     description: "city id",
  //   })
  //   @IsOptional()
  //   @IsUUID()
  //   readonly city!: any;
}
