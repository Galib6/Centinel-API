import { Injectable } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { BaseService } from "@src/app/base";
import { Repository } from "typeorm";
import { Comment } from "../entities/comments.entity";

@Injectable()
export class CommentsService extends BaseService<Comment> {
  constructor(
    @InjectRepository(Comment)
    public readonly _repo: Repository<Comment>
  ) {
    super(_repo);
  }

  // public async findBySlug(slug: string): Promise<Category> {
  //   return this.findOne({
  //     where: {
  //       slug,
  //     },
  //   });
  // }
}
