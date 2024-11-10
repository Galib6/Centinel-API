import { Injectable } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { BaseService } from "@src/app/base";
import { Repository } from "typeorm";
import { MetaOption } from "../entities/meta-options.entity";

@Injectable()
export class MetaOptionService extends BaseService<MetaOption> {
  constructor(
    @InjectRepository(MetaOption)
    public readonly _repo: Repository<MetaOption>
  ) {
    super(_repo);
  }
}
