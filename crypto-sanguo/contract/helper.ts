import { now } from "ultrain-ts-lib/src/time";


import {
  Unit,
  UnitInfo,
  Item,
  ItemInfo
} from './data_in_db';


const MAX_ENERGY: u8 = 5;
const ALPHABET = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';

export function unitHp(unit: Unit, level: u8): u16 {
  return unit.hp + unit.hpStep * level;
}

export function unitAttack(unit: Unit, level: u8): u16 {
  return unit.attack + unit.attackStep * level;
}

export function unitIntelligence(unit: Unit, level: u8): u16 {
  return unit.intelligence + unit.intelligenceStep * level;
}

export function unitDefense(unit: Unit, level: u8): u16 {
  return unit.defense + unit.defenseStep * level;
}

export function unitAgility(unit: Unit, level: u8): u16 {
  return unit.agility + unit.agilityStep * level;
}

export function unitLuck(unit: Unit, level: u8): u16 {
  return unit.luck + unit.luckStep * level;
}

export function unitRecoverCost(unit: Unit, level: u8): u16 {
  let cost = u16(unit.recoverCost);

  for (let i:u8 = 1; i < level; ++i) {
    cost = cost * 11 / 10;
  }

  return cost;
}

export function unitUpgradeCost(unit: Unit, level: u8): u16 {
  let cost = u16(unit.upgradeCost);

  for (let i:u8 = 1; i < level; ++i) {
    cost = cost * 11 / 10;
  }

  return cost;
}

export function u8ToString(n: u8): string {
  return ALPHABET[n % 62];
}

export function u16ToString(n: u16): string {
  return ALPHABET[n / 62] + ALPHABET[n % 62];
}

export function unitToStr(unit: Unit, unitInfo: UnitInfo, now: u32): string {
  const realAmount = unitInfo.energyAmount +
      u8((now - unitInfo.energyTime) / (3600));

  let energyAmount: u8;
  let energyTime: u32;

  if (realAmount > MAX_ENERGY) {
    energyAmount = MAX_ENERGY;
    energyTime = 0;
  } else {
    energyAmount = realAmount,
    energyTime = (now - unitInfo.energyTime) % 3600;
  }

  return u16ToString(u16(unitInfo.rId)) +
    u16ToString(u16(unitInfo.unitId)) +
    u8ToString(unitInfo.level) +
    u8ToString(energyAmount) +
    u16ToString(u16(energyTime)) +
    u16ToString(unitHp(unit, unitInfo.level)) +
    u16ToString(unitAttack(unit, unitInfo.level)) +
    u16ToString(unitIntelligence(unit, unitInfo.level)) +
    u16ToString(unitDefense(unit, unitInfo.level)) +
    u16ToString(unitAgility(unit, unitInfo.level)) +
    u16ToString(unitLuck(unit, unitInfo.level)) +
    u16ToString(unitRecoverCost(unit, unitInfo.level)) +
    u16ToString(unitUpgradeCost(unit, unitInfo.level)) +
    u16ToString(unitInfo.itemRIdArray[0] || 0) +
    u16ToString(unitInfo.itemRIdArray[1] || 0) +
    u16ToString(unitInfo.itemRIdArray[2] || 0);
}

export function itemHp(item: Item, itemInfo: ItemInfo): u16 {
  return item.hp * (1 + itemInfo.level / 2) * (1 + itemInfo.score);
}

export function itemAttack(item: Item, itemInfo: ItemInfo): u16 {
  return item.attack * (1 + itemInfo.level / 2) * (1 + itemInfo.score);
}

export function itemIntelligence(item: Item, itemInfo: ItemInfo): u16 {
  return item.intelligence * (1 + itemInfo.level / 2) * (1 + itemInfo.score);
}

export function itemDefense(item: Item, itemInfo: ItemInfo): u16 {
  return item.defense * (1 + itemInfo.level / 2) * (1 + itemInfo.score);
}

export function itemAgility(item: Item, itemInfo: ItemInfo): u16 {
  return item.agility * (1 + itemInfo.level / 2) * (1 + itemInfo.score);
}

export function itemLuck(item: Item, itemInfo: ItemInfo): u16 {
  return item.luck * (1 + itemInfo.level / 2) * (1 + itemInfo.score);
}

export function itemWorth(item: Item, itemInfo: ItemInfo): u16 {
  return u16(item.worth * itemInfo.level);
}

export function itemToStr(item: Item, itemInfo: ItemInfo): string {
  return u16ToString(u16(itemInfo.rId)) +
    u16ToString(u16(itemInfo.itemId)) +
    u8ToString(itemInfo.level) +
    u8ToString(itemInfo.score) +
    u16ToString(itemHp(item, itemInfo)) +
    u16ToString(itemAttack(item, itemInfo)) +
    u16ToString(itemIntelligence(item, itemInfo)) +
    u16ToString(itemDefense(item, itemInfo)) +
    u16ToString(itemAgility(item, itemInfo)) +
    u16ToString(itemLuck(item, itemInfo)) +
    u16ToString(itemWorth(item, itemInfo));
}

export function random(nonce: u16) : u16 {
  const seed = now() + nonce;
  const str = Math.log(seed).toString();
  const len = str.length;

  return u16(parseInt(str[len - 5] + str[len - 4] + str[len - 3] + str[len - 2] + str[len - 1]));
}
