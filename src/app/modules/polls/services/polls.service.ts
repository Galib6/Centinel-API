import { Injectable } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { BaseService } from "@src/app/base";
import { Repository } from "typeorm";
import { Poll } from "../entities/polls.entity";

@Injectable()
export class PollsService extends BaseService<Poll> {
  constructor(
    @InjectRepository(Poll)
    public readonly _repo: Repository<Poll>
  ) {
    super(_repo);
  }

  public async findBySlug(slug: string): Promise<Poll> {
    return this.findOne({
      where: {
        slug,
      },
    });
  }
}
