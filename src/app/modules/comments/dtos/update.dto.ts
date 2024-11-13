import { PartialType } from "@nestjs/swagger";
import { CreateCommentDTO } from "./create.dto";

export class UpdateTagDto extends PartialType(CreateCommentDTO) {}
