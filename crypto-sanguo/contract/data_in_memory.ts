import {
  Unit,
  Item,
  UnitInfo,
  ItemInfo,
} from './data_in_db';

import {
  unitHp,
  unitAttack,
  unitIntelligence,
  unitDefense,
  unitAgility,
  unitLuck,
  itemHp,
  itemAttack,
  itemIntelligence,
  itemDefense,
  itemAgility,
  itemLuck
} from './helper';

const ITEM_LIMIT: u8 = 3;

export class UnitStatus {
  unitId: u64;

  hpR: u16;
  agilityR: u16;
  hp: u16;
  attack: u16;
  intelligence: u16;
  defense: u16;
  agility: u16;
  stunned: u16;
  luck: u16;
  round: u16;

  fromNPC(unit: Unit, level: u8): void {
    this.unitId = unit.unitId;

    this.hpR = unitHp(unit, level);
    this.agilityR = unitAgility(unit, level);
    this.attack = unitAttack(unit, level);
    this.intelligence = unitIntelligence(unit, level);
    this.defense = unitDefense(unit, level);
    this.stunned = 0;
    this.luck = unitLuck(unit, level);
    this.round = 0;

    this.hp = this.hpR;
    this.agility = this.agilityR;
  }

  fromPlayer(unit: Unit, unitInfo: UnitInfo, itemArray: Item[], itemInfoArray: ItemInfo[]): void {
    ultrain_assert(itemArray.length == ITEM_LIMIT, "ITEM_LIMIT");
    ultrain_assert(itemInfoArray.length == ITEM_LIMIT, "ITEM_LIMIT");

    this.unitId = unit.unitId;

    this.hpR = unitHp(unit, unitInfo.level);
    this.agilityR = unitAgility(unit, unitInfo.level);
    this.attack = unitAttack(unit, unitInfo.level);
    this.intelligence = unitIntelligence(unit, unitInfo.level);
    this.defense = unitDefense(unit, unitInfo.level);
    this.stunned = 0;
    this.luck = unitLuck(unit, unitInfo.level);
    this.round = 0;

    for (let i = 0; i < itemArray.length; ++i) {
      this.hpR += itemHp(itemArray[i], itemInfoArray[i]);
      this.agilityR += itemAgility(itemArray[i], itemInfoArray[i]);
      this.attack += itemAttack(itemArray[i], itemInfoArray[i]);
      this.intelligence += itemIntelligence(itemArray[i], itemInfoArray[i]);
      this.defense += itemDefense(itemArray[i], itemInfoArray[i]);
      this.luck += itemLuck(itemArray[i], itemInfoArray[i]);
    }

    this.hp = this.hpR;
    this.agility = this.agilityR;
  }
}

export class BattleStatus {
  myArray: UnitStatus[];
  enemyArray: UnitStatus[];
}
