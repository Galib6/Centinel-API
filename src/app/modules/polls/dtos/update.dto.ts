import { PartialType } from "@nestjs/swagger";
import { CreatePollDTO } from "./create.dto";

export class UpdateTagDto extends PartialType(CreatePollDTO) {}
