import { NAME, RNAME } from 'ultrain-ts-lib/src/account';

export class Unit implements Serializable {
  @primaryid
  unitId: u64;

  hp: u16;
  hpStep: u16;
  attack: u16;
  attackStep: u16;
  intelligence: u16;
  intelligenceStep: u16;
  defense: u16;
  defenseStep: u16;
  agility: u16;
  agilityStep: u16;
  luck: u16;
  luckStep: u16;

  recoverCost: u64;
  upgradeCost: u64;

  price: u64;
  priceStep: u64;
  soldAmount: u32;
}

export class Item implements Serializable {
  @primaryid
  itemId: u64;

  hp: u16;
  attack: u16;
  intelligence: u16;
  defense: u16;
  agility: u16;
  luck: u16;

  worth: u64;
}

export class RID implements Serializable {
  @primaryid
  fixedId: u64;  // always equal to 1
  rId: u64;
}

export class UnitInfo implements Serializable {
  @primaryid
  rId: u64;  // real id

  unitId: u64;
  level: u8;
  itemRIdArray: u8[];

  energyAmount: u8;
  energyTime: u32;
  // Actual amount = amount + (now - time) / (1 hours
}

export class ItemInfo implements Serializable {
  @primaryid
  rId: u64;  // real id

  itemId: u64;

  level: u8;
  score: u8;
  mountedByUnitId: u16;
}

export class Stage implements Serializable {
  @primaryid
  stageId: u64;

  dependencyStageId: u64;
  battleAmount: u8;
}

export class StageBattle implements Serializable {
  // We will use stageId as scope

  @primaryid
  battleIndex: u64;

  npcUnitIdArray: u64[];
  npcLevelArray: u8[];
  dropItemIdArray: u64[];
  dropChanceArray: u16[];  // 1 - 1000
  dropSGTLow: u64;
  dropSGTHigh: u64;
}

export class StageProgress implements Serializable {
  // We will use stageId as scope

  @primaryid
  user: account_name;

  battleIndex: u64;
  finished: boolean;
}

export class Duel implements Serializable {
  time: u64;
  fromName: string;
  toName: string;
  record: string;
}

export class User implements Serializable {
  @primaryid
  user: account_name;

  defenseUnitIdArray: u16[];
  duelScore: u32;
  winTime: u32;
  loseTime: u32;

  unitIdArray: u64[];
  unitRIdArray: u64[];
  itemRIdArray: u64[];

  record: string;  // PvE record

  duelHistory: Duel[];  // Last 10 PvP records
}
