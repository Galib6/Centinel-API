import { Injectable } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { BaseService } from "@src/app/base";
import { Repository } from "typeorm";
import { PostTag } from "../entities/PostTag.entity";

@Injectable()
export class PostService extends BaseService<PostTag> {
  constructor(
    @InjectRepository(PostTag)
    public readonly _repo: Repository<PostTag>
  ) {
    super(_repo);
  }
}
