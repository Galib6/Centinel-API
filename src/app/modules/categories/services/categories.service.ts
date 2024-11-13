import { Injectable } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { BaseService } from "@src/app/base";
import { Repository } from "typeorm";
import { Category } from "../entities/categories.entity";

@Injectable()
export class CategoriesService extends BaseService<Category> {
  constructor(
    @InjectRepository(Category)
    public readonly _repo: Repository<Category>
  ) {
    super(_repo);
  }

  public async findBySlug(slug: string): Promise<Category> {
    return this.findOne({
      where: {
        slug,
      },
    });
  }
}
