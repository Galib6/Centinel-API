import { BaseEntity } from "@src/app/base";
import { ENUM_COLUMN_TYPES, ENUM_TABLE_NAMES } from "@src/shared";
import { Column, Entity, OneToMany } from "typeorm";
import { PollOption } from "./pollsOptions.entity";

@Entity(ENUM_TABLE_NAMES.POLLS, { orderBy: { createdAt: "DESC" } })
export class Poll extends BaseEntity {
  public static readonly SEARCH_TERMS: string[] = ["title"];

  @Column({
    type: ENUM_COLUMN_TYPES.VARCHAR,
    length: 256,
  })
  title: string;

  @Column({
    type: ENUM_COLUMN_TYPES.VARCHAR,
    length: 256,
    unique: true,
  })
  slug: string;

  @Column({
    type: ENUM_COLUMN_TYPES.TEXT,
  })
  description: string;

  @Column({
    type: ENUM_COLUMN_TYPES.INT,
  })
  orderPriority: number;

  @OneToMany(() => PollOption, (poll: PollOption) => poll.poll, {
    cascade: true,
  })
  options: PollOption[];
}
