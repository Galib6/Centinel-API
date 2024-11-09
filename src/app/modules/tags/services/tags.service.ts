import { Injectable } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { BaseService } from "@src/app/base";
import { Repository } from "typeorm";
import { Tag } from "../entities/tags.entity";

@Injectable()
export class TagsService extends BaseService<Tag> {
  constructor(
    @InjectRepository(Tag)
    public readonly _repo: Repository<Tag>
  ) {
    super(_repo);
  }
}
