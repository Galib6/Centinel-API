import { PartialType } from "@nestjs/swagger";
import { CreateTagDto } from "./create.dto";

export class UpdateTagDto extends PartialType(CreateTagDto) {}
