import { PartialType } from "@nestjs/swagger";
import { CreateMetaOptionsDto } from "./create.dto";

export class UpdateMetaOption extends PartialType(CreateMetaOptionsDto) {}
