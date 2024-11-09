import { PartialType } from "@nestjs/swagger";
import { CreateTagDto } from "./create.dto";

export class UpdatePostDto extends PartialType(CreateTagDto) {}
