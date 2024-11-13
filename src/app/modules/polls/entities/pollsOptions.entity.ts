import { ENUM_COLUMN_TYPES, ENUM_TABLE_NAMES } from "@src/shared";
import {
  Column,
  Entity,
  JoinColumn,
  ManyToOne,
  PrimaryGeneratedColumn,
} from "typeorm";
import { Poll } from "./polls.entity";

@Entity(ENUM_TABLE_NAMES.POLL_OPTIONS, { orderBy: { createdAt: "DESC" } })
export class PollOption {
  public static readonly SEARCH_TERMS: string[] = ["title"];

  @PrimaryGeneratedColumn()
  id?: string;

  @Column({
    type: ENUM_COLUMN_TYPES.VARCHAR,
    length: 256,
  })
  title: string;

  @Column({
    type: ENUM_COLUMN_TYPES.INT,
  })
  orderPriority: number;

  @ManyToOne(() => Poll, (poll) => poll.options, {
    onDelete: "NO ACTION",
  })
  @JoinColumn()
  poll?: Poll;
}
