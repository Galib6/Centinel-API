import { PartialType } from "@nestjs/swagger";
import { CreateCategoriesDTO } from "./create.dto";

export class UpdateTagDto extends PartialType(CreateCategoriesDTO) {}
