import { BattleStatus, UnitStatus } from './data_in_memory';
import { random, u16ToString } from './helper';

const UNIT_LIMIT: u8 = 3;
const ITEM_LIMIT: u8 = 3;
const MAX_ENERGY: u8 = 5;

class InnerResult {

  didFinish: boolean;
  didIWin: boolean;

  constructor(_didFinish: boolean, _didIWin: boolean) {
    this.didFinish = _didFinish;
    this.didIWin = _didIWin;
  }
}

export class BattleResult {

  didIWin: boolean;
  record: string;

  constructor(_didIWin: boolean, _record: string) {
    this.didIWin = _didIWin;
    this.record = _record;
  }
}

export function processBattleResult(status: BattleStatus) : BattleResult {
  var record: string = "";

  var res: InnerResult = _checkResult(status);

  if (res.didFinish) {
    return new BattleResult(res.didIWin, record);
  }

  record = "";

  var i: u16;
  var j: u8;

  for (i = 0; i < 1000; ++i) {
    let largest: u16 = 0;
    let k: u8 = 0;

    // Accumulate agility and find the largest one.
    for (j = 0; j < UNIT_LIMIT; ++j) {
      if (status.myArray[j].hpR > 0 && status.myArray[j].agilityR > largest) {
        largest = status.myArray[j].agilityR;
        k = j + 1;
      }

      if (status.enemyArray[j].hpR > 0 && status.enemyArray[j].agilityR > largest) {
        largest = status.enemyArray[j].agilityR;
        k = j + UNIT_LIMIT + 1;
      }
    }

    // If no one larger than 100, increase all.
    if (largest < 100) {
      for (j = 0; j < UNIT_LIMIT; ++j) {
        if (status.myArray[j].hpR > 0) {
          status.myArray[j].agilityR += status.myArray[j].agility;
        }

        if (status.enemyArray[j].hpR > 0) {
          status.enemyArray[j].agilityR += status.enemyArray[j].agility;
        }
      }
    } else {
      if (k > UNIT_LIMIT) {
        j = k - UNIT_LIMIT - 1;

        status.enemyArray[j].agilityR -= 100;

        if (status.enemyArray[j].stunned) {
          status.enemyArray[j].stunned = false;
          continue;
        }

        ++status.enemyArray[j].round;
      } else {
        j = k - 1;

        status.myArray[j].agilityR -= 100;

        if (status.myArray[j].stunned) {
          status.myArray[j].stunned = false;
          continue;
        }

        ++status.myArray[j].round;
      }

      record = record + _battleOneRound(k, i, status);

      res = _checkResult(status);

      if (res.didFinish) {
        return new BattleResult(res.didIWin, record);
      }

      if (record.length >= 118) break;
    }
  }

  return new BattleResult(res.didIWin, record);
}

function _checkResult(status: BattleStatus) : InnerResult {
  var t: u16 = 0;
  var i: u16;

  for (i = 0; i < UNIT_LIMIT; ++i) {
    if (status.myArray[i].hpR > 0) {
      ++t;
    }
  }

  if (t == 0) {
    return new InnerResult(true, false);
  }

  t = 0;

  for (i = 0; i < UNIT_LIMIT; ++i) {
    if (status.enemyArray[i].hpR > 0) {
      ++t;
    }
  }

  if (t == 0) {
    return new InnerResult(true, true);
  }

  return new InnerResult(false, false);
}

function _attack(status: BattleStatus,
                 index: u8,
                 targetIndex: u8,
                 extraDamage: u16) : u16 {
  var attack: u16;
  var defense: u16;
  var damage: u16;

  if (index > UNIT_LIMIT) {
    attack = status.enemyArray[index - 1 - UNIT_LIMIT].attack;
    defense = status.myArray[targetIndex].defense;
  } else {
    attack = status.myArray[index - 1].attack;
    defense = status.enemyArray[targetIndex].defense;
  }

  if (defense * 7 / 10 > attack) {
    damage = attack * 3 * (100 + extraDamage) / 1000;
  } else {
    damage = (attack - defense * 7 / 10) * (100 + extraDamage) / 100;
  }

  if (index > UNIT_LIMIT) {
    if (damage > status.myArray[targetIndex].hpR) {
      status.myArray[targetIndex].hpR = 0;
    } else {
      status.myArray[targetIndex].hpR -= damage;
    }

    return status.myArray[targetIndex].hpR;
  } else {
    if (damage > status.enemyArray[targetIndex].hpR) {
      status.enemyArray[targetIndex].hpR = 0;
    } else {
      status.enemyArray[targetIndex].hpR -= damage;
    }

    return status.enemyArray[targetIndex].hpR;
  }
}

function _attackAll(status: BattleStatus,
                    index: u8,
                    extraDamage: u16) : u16[] {
  var attack: u16;
  var defense: u16;
  var damage: u16;
  var result: u16[] = [];
  result.push(0);
  result.push(0);
  result.push(0);

  for (let targetIndex: u16 = 0; targetIndex < UNIT_LIMIT; ++targetIndex) {
    if (index > UNIT_LIMIT) {
      if (status.myArray[targetIndex].hpR == 0) {
        continue;
      }

      attack = status.enemyArray[index - 1 - UNIT_LIMIT].attack;
      defense = status.myArray[targetIndex].defense;
    } else {
      if (status.enemyArray[targetIndex].hpR == 0) {
        continue;
      }

      attack = status.myArray[index - 1].attack;
      defense = status.enemyArray[targetIndex].defense;
    }

    if (defense * 7 / 10 > attack) {
      damage = attack * 3 * (100 + extraDamage) / 1000;
    } else {
      damage = (attack - defense * 7 / 10) * (100 + extraDamage) / 100;
    }

    if (index > UNIT_LIMIT) {
      if (damage > status.myArray[targetIndex].hpR) {
        status.myArray[targetIndex].hpR = 0;
      } else {
        status.myArray[targetIndex].hpR -= damage;
      }

      result[targetIndex] = status.myArray[targetIndex].hpR;
    } else {
      if (damage > status.enemyArray[targetIndex].hpR) {
        status.enemyArray[targetIndex].hpR = 0;
      } else {
        status.enemyArray[targetIndex].hpR -= damage;
      }

      result[targetIndex] = status.enemyArray[targetIndex].hpR;
    }
  }

  return result;
}

function  _getRandomUnit(unitArray: Array<UnitStatus>, offset: u16) : u8 {
  var t: u8 = 0;
  var i: u8;

  for (i = 0; i < UNIT_LIMIT; ++i) {
    if (unitArray[i].hpR > 0) {
      ++t;
    }
  }

  if (t == 0) return 0;

  t = u8(random(offset) % t + 1);

  for (i = 0; i < UNIT_LIMIT; ++i) {
    if (unitArray[i].hpR > 0) {
      --t;
      if (t == 0) return i;
    }
  }

  return 0;
}

function _findAllyWithLeastHp(unitArray: Array<UnitStatus>) : u8 {
  if (unitArray[0].hpR > 0 && (unitArray[1].hpR == 0 || unitArray[0].hpR <= unitArray[1].hpR) &&
      (unitArray[2].hpR == 0 || unitArray[0].hpR <= unitArray[2].hpR)) {
    return 0;
  }

  if (unitArray[1].hpR > 0 && (unitArray[2].hpR == 0 || unitArray[1].hpR <= unitArray[2].hpR)) {
    return 1;
  }

  if (unitArray[2].hpR > 0) {
    return 2;
  }

  return 0;
}

function _battleOneRound(index: u8,
                         round: u16,
                         status: BattleStatus): string {
  var unitId: u64;

  if (index > UNIT_LIMIT) {
    unitId = status.enemyArray[index - 1 - UNIT_LIMIT].unitId;
  } else {
    unitId = status.myArray[index - 1].unitId;
  }

  var targetIndex: u8;

  if (index > UNIT_LIMIT) {
    targetIndex = _getRandomUnit(status.myArray, round * UNIT_LIMIT * 2 + index);
  } else {
    targetIndex = _getRandomUnit(status.enemyArray, round * UNIT_LIMIT * 2 + index);
  }

  var i: u8;
  var n0: u8;
  var t0: u16;
  var t1: u16;
  var result: u16;
  var record: string;

  if (unitId == 1) {
    // On any enemy with less than 30% hp, inflict additional 20% damage.
    if (index > UNIT_LIMIT) {
      t0 = status.myArray[targetIndex].hpR;
      t1 = status.myArray[targetIndex].hp;
    } else {
      t0 = status.enemyArray[targetIndex].hpR;
      t1 = status.enemyArray[targetIndex].hp;
    }

    if (t0 < t1 * 3 / 10) {
      result = _attack(status, index, targetIndex, 0);
      record = _createOneRecord(index, targetIndex, 1, result);
    } else {
      result = _attack(status, index, targetIndex, 20);
      record = _createOneRecord(index, targetIndex, 0, result);
    }
  } else if (unitId == 2) {
    if (index > UNIT_LIMIT) {
      t0 = status.enemyArray[index - 1 - UNIT_LIMIT].round;
    } else {
      t0 = status.myArray[index - 1].round;
    }

    // In every 3 attacks, inflict additional 20% damage on the 3rd one.
    if (t0 % 3 == 2) {
      result = _attack(status, index, targetIndex, 20);
      record = _createOneRecord(index, targetIndex, 2, result);
    } else {
      result = _attack(status, index, targetIndex, 0);
      record = _createOneRecord(index, targetIndex, 0, result);
    }
  } else if (unitId == 3) {
    // Inflict 20% additional damage on the middle enemy.
    if (targetIndex == 1) {
      result = _attack(status, index, targetIndex, 20);
      record = _createOneRecord(index, targetIndex, 3, result);
    } else {
      result = _attack(status, index, targetIndex, 0);
      record = _createOneRecord(index, targetIndex, 0, result);
    }
  } else if (unitId == 4) {
    // After losing 50% HP, the next attack will be applied on all enemies.
    if (index > UNIT_LIMIT) {
      if (status.enemyArray[index - 1 - UNIT_LIMIT].hpR * 2 < status.enemyArray[index - 1 - UNIT_LIMIT].hp) {
        let results: Array<u16> = _attackAll(status, index, 0);
        record = _createLongRecord(index, targetIndex, 4, results[0], results[1], results[2]);
      } else {
        result = _attack(status, index, targetIndex, 0);
        record = _createOneRecord(index, targetIndex, 0, result);
      }
    } else {
      if (status.myArray[index - 1].hpR * 2 < status.myArray[index - 1].hp) {
        let results: Array<u16> = _attackAll(status, index, 0);
        record = _createLongRecord(index, targetIndex, 4, results[0], results[1], results[2]);
      } else {
        result = _attack(status, index, targetIndex, 0);
        record = _createOneRecord(index, targetIndex, 0, result);
      }
    }
  } else if (unitId == 5) {
    // With 20% chance, stun one enemy for one round.
    result = _attack(status, index, targetIndex, 0);
    t0 = random(round * UNIT_LIMIT + index + 1024);

    if (t0 % 100 < 20) {
      if (index > UNIT_LIMIT) {
        status.myArray[targetIndex].stunned = true;
      } else {
        status.enemyArray[targetIndex].stunned = true;
      }

      record = _createOneRecord(index, targetIndex, 5, result);
    } else {
      record = _createOneRecord(index, targetIndex, 0, result);
    }
  } else if (unitId == 6) {
    // Increase agility by 20% after 3 attacks
    result = _attack(status, index, targetIndex, 0);

    if (index > UNIT_LIMIT) {
      t0 = status.enemyArray[index - 1 - UNIT_LIMIT].round;
    } else {
      t0 = status.myArray[index - 1].round;
    }

    if (t0 == 3) {
      if (index > UNIT_LIMIT) {
        t1 = status.enemyArray[index - 1 - UNIT_LIMIT].agility * 12 / 10;
        status.enemyArray[index - 1 - UNIT_LIMIT].agility = t1;
      } else {
        t1 = status.myArray[index - 1].agility * 12 / 10;
        status.myArray[index - 1].agility = t1;
      }

      record = _createTwoRecords(index, targetIndex, 0, result, targetIndex, 6, t1);
    } else {
      record = _createOneRecord(index, targetIndex, 0, result);
    }
  } else if (unitId == 7) {
    // After all allies die, inflict additional 20% damage on the next attack.
    if (index > UNIT_LIMIT) {
      for (i = 0; i < UNIT_LIMIT; ++i) {
        if (status.enemyArray[i].hpR > 0) ++n0;
      }
    } else {
      for (i = 0; i < UNIT_LIMIT; ++i) {
        if (status.myArray[i].hpR > 0) ++n0;
      }
    }

    if (n0 == 1) {
      result = _attack(status, index, targetIndex, 20);
      record = _createOneRecord(index, targetIndex, 7, result);
    } else {
      result = _attack(status, index, targetIndex, 0);
      record = _createOneRecord(index, targetIndex, 0, result);
    }
  } else if (unitId == 8) {
    // When attacking, decrease enemy's defense by 20% every time.
    if (index > UNIT_LIMIT) {
      status.myArray[targetIndex].defense = status.myArray[targetIndex].defense * 8 / 10;
      result = _attack(status, index, targetIndex, 0);
      record = _createTwoRecords(index, targetIndex, 8, status.myArray[targetIndex].defense, targetIndex, 0, result);
    } else {
      status.enemyArray[targetIndex].defense = status.enemyArray[targetIndex].defense * 8 / 10;
      result = _attack(status, index, targetIndex, 0);
      record = _createTwoRecords(index, targetIndex, 8, status.enemyArray[targetIndex].defense, targetIndex, 0, result);
    }
  } else if (unitId == 9) {
    // When attacking,  decrease enemy's agility by 20%.
    if (index > UNIT_LIMIT) {
      status.myArray[targetIndex].agility = status.myArray[targetIndex].agility * 8 / 10;
      result = _attack(status, index, targetIndex, 0);
      record = _createTwoRecords(index, targetIndex, 9, status.myArray[targetIndex].agility, targetIndex, 0, result);
    } else {
      status.enemyArray[targetIndex].agility = status.enemyArray[targetIndex].agility * 8 / 10;
      result = _attack(status, index, targetIndex, 0);
      record = _createTwoRecords(index, targetIndex, 9, status.enemyArray[targetIndex].agility, targetIndex, 0, result);
    }
  } else if (unitId == 10) {
    // Heals the ally with the least hp by 20%.
    if (index > UNIT_LIMIT) {
      n0 = _findAllyWithLeastHp(status.enemyArray);
      t1 = status.enemyArray[n0].hpR + status.enemyArray[n0].hp / 5;

      if (t1 <= status.enemyArray[n0].hp) {
        status.enemyArray[n0].hpR = t1;
      } else {
        status.enemyArray[n0].hpR = status.enemyArray[n0].hp;
      }

      result = _attack(status, index, targetIndex, 0);

      record = _createTwoRecords(index, n0, 10, status.enemyArray[n0].hpR, targetIndex, 0, result);
    } else {
      n0 = _findAllyWithLeastHp(status.myArray);
      t1 = status.myArray[n0].hpR + status.myArray[n0].hp / 5;

      if (t1 <= status.myArray[n0].hp) {
        status.myArray[n0].hpR = t1;
      } else {
        status.myArray[n0].hpR = status.myArray[n0].hp;
      }

      result = _attack(status, index, targetIndex, 0);
      record = _createTwoRecords(index, n0, 10, status.myArray[n0].hpR, targetIndex, 0, result);
    }
  } else if (unitId == 11) {
    // Increase all allies agility by 5%.
    if (index > UNIT_LIMIT) {
      for (n0 = 0; n0 < UNIT_LIMIT; ++n0) {
        if (status.enemyArray[n0].hpR > 0) {
          status.enemyArray[n0].agility = status.enemyArray[n0].agility * 21 / 20;
        }
      }
    } else {
      for (n0 = 0; n0 < UNIT_LIMIT; ++n0) {
        if (status.myArray[n0].hpR > 0) {
          status.myArray[n0].agility = status.myArray[n0].agility * 21 / 20;
        }
      }
    }

    result = _attack(status, index, targetIndex, 0);
    record = _createTwoRecords(index, targetIndex, 11, 0, targetIndex, 0, result);
  } else if (unitId == 12) {
    // After one ally dies, increase his own hp by 20%.
    result = _attack(status, index, targetIndex, 0);

    if (index > UNIT_LIMIT) {
      for (i = 0; i < UNIT_LIMIT; ++i) {
        if (status.enemyArray[i].hp > 0 && status.enemyArray[i].hpR == 0) ++n0;
      }

      if (n0 > 0) {
        i = index - 1 - UNIT_LIMIT;
        t1 = status.enemyArray[i].hpR + status.enemyArray[i].hp / 5;

        if (t1 <= status.enemyArray[i].hp) {
          status.enemyArray[i].hpR = t1;
        } else {
          status.enemyArray[i].hpR = status.enemyArray[i].hp;
        }

        record = _createTwoRecords(index, i, 12, status.enemyArray[i].hpR, targetIndex, 0, result);
      } else {
        record = _createOneRecord(index, targetIndex, 0, result);
      }
    } else {
      for (i = 0; i < UNIT_LIMIT; ++i) {
        if (status.myArray[i].hp > 0 && status.myArray[i].hpR == 0) ++n0;
      }

      if (n0 > 0) {
        i = index - 1;
        t1 = status.myArray[i].hpR + status.myArray[i].hp / 5;

        if (t1 <= status.myArray[i].hp) {
          status.myArray[i].hpR = t1;
        } else {
          status.myArray[i].hpR = status.myArray[i].hp;
        }

        record = _createTwoRecords(index, i, 12, status.myArray[i].hpR, targetIndex, 0, result);
      } else {
        record = _createOneRecord(index, targetIndex, 0, result);
      }
    }
  } else if (unitId == 13) {
    // Gain hp by 20% after losing 50% hp.
    result = _attack(status, index, targetIndex, 0);

    if (index > UNIT_LIMIT) {
      i = index - 1 - UNIT_LIMIT;
      if (status.enemyArray[i].hpR * 2 < status.enemyArray[i].hp) {
        t0 = status.enemyArray[i].hpR + status.enemyArray[i].hp / 5;
        if (t0 <= status.enemyArray[i].hp) {
          status.enemyArray[i].hpR = t0;
        } else {
          status.enemyArray[i].hpR = status.enemyArray[i].hp;
        }
        record = _createTwoRecords(index, i, 13, status.enemyArray[i].hpR, targetIndex, 0, result);
      } else {
        record = _createOneRecord(index, targetIndex, 0, result);
      }
    } else {
      i = index - 1;
      if (status.myArray[i].hpR * 2 < status.myArray[i].hp) {
        t0 = status.myArray[i].hpR + status.myArray[i].hp / 5;
        if (t0 <= status.myArray[i].hp) {
          status.myArray[i].hpR = t0;
        } else {
          status.myArray[i].hpR = status.myArray[i].hp;
        }
        record = _createTwoRecords(index, i, 13, status.myArray[i].hpR, targetIndex, 0, result);
      } else {
        record = _createOneRecord(index, targetIndex, 0, result);
      }
    }
  } else if (unitId == 14) {
    // Stun all enemy in the 3rd round.

    if (index > UNIT_LIMIT) {
      t0 = status.enemyArray[index - 1 - UNIT_LIMIT].round;
    } else {
      t0 = status.myArray[index - 1].round;
    }

    if (t0 == 3) {
      if (index > UNIT_LIMIT) {
        status.myArray[0].stunned = true;
        status.myArray[1].stunned = true;
        status.myArray[2].stunned = true;
      } else {
        status.enemyArray[0].stunned = true;
        status.enemyArray[1].stunned = true;
        status.enemyArray[2].stunned = true;
      }

      record = _createOneRecord(index, targetIndex, 14, 0);
    } else {
      result = _attack(status, index, targetIndex, 0);
      record = _createOneRecord(index, targetIndex, 0, result);
    }
  } else if (unitId == 15) {
    // Gains hp by attacking enemies.
    if (index > UNIT_LIMIT) {
      t0 = status.myArray[targetIndex].hpR;
      result = _attack(status, index, targetIndex, 0);
      t0 = t0 - result;

      i = index - UNIT_LIMIT - 1;
      t1 = status.enemyArray[i].hpR + t0;

      if (status.enemyArray[i].hpR < status.enemyArray[i].hp) {
        if (t1 <= status.enemyArray[i].hp) {
          status.enemyArray[i].hpR = t1;
        } else {
          status.enemyArray[i].hpR = status.enemyArray[i].hp;
        }

        t0 = status.enemyArray[i].hpR;

        record = _createTwoRecords(index, targetIndex, 0, result, i, 15, t0);
      } else {
        record = _createOneRecord(index, targetIndex, 0, result);
      }
    } else {
      t0 = status.enemyArray[targetIndex].hpR;
      result = _attack(status, index, targetIndex, 0);
      t0 = t0 - result;

      i = index - 1;
      t1 = status.myArray[i].hpR + t0;

      if (status.myArray[i].hpR < status.enemyArray[i].hp) {
        if (t1 <= status.enemyArray[i].hp) {
          status.myArray[i].hpR = t1;
        } else {
          status.myArray[i].hpR = status.myArray[i].hp;
        }

        t0 = status.myArray[i].hpR;

        record = _createTwoRecords(index, targetIndex, 0, result, i, 15, t0);
      } else {
        record = _createOneRecord(index, targetIndex, 0, result);
      }
    }
  } else if (unitId == 16) {
    // Attack all on the 3rd of every three attacks.
    if (index > UNIT_LIMIT) {
      t0 = status.enemyArray[index - 1 - UNIT_LIMIT].round;
    } else {
      t0 = status.myArray[index - 1].round;
    }

    if (t0 % 3 == 0) {
      let results: Array<u16> = _attackAll(status, index, 0);
      record = _createLongRecord(index, targetIndex, 16, results[0], results[1], results[2]);
    } else {
      result = _attack(status, index, targetIndex, 0);
      record = _createOneRecord(index, targetIndex, 0, result);
    }
  } else if (unitId == 17) {
    // In every 3 attacks, stun the enemy being attacked for one round.

    result = _attack(status, index, targetIndex, 0);

    if (index > UNIT_LIMIT) {
      t0 = status.enemyArray[index - 1 - UNIT_LIMIT].round;
    } else {
      t0 = status.myArray[index - 1].round;
    }

    if (t0 % 3 == 0) {
      if (index > UNIT_LIMIT) {
        status.myArray[targetIndex].stunned = true;
      } else {
        status.enemyArray[targetIndex].stunned = true;
      }

      record = _createOneRecord(index, targetIndex, 17, result);
    } else {
      record = _createOneRecord(index, targetIndex, 0, result);
    }
  } else {
    // Just attack.
    result = _attack(status, index, targetIndex, 0);
    record = _createOneRecord(index, targetIndex, 0, result);
  }

  return record;
}

function _createOneRecord(index: u16, targetIndex: u16, t: u16, result: u16) : string {
  return index.toString() + targetIndex.toString() + t.toString() + u16ToString(result);
}

function _createLongRecord(index: u8, targetIndex: u8, t: u8,
                           result: u16, result1: u16, result2: u16): string {
  return index.toString() + targetIndex.toString() + t.toString() +
      u16ToString(result) + u16ToString(result1) + u16ToString(result2);
}

function _createTwoRecords(index: u8, targetIndex: u8, t: u8, result: u16,
                           targetIndex1: u8, t1: u8, result1: u16): string {
  return index.toString() + targetIndex.toString() + t.toString() + u16ToString(result) +
      index.toString() + targetIndex1.toString() + t1.toString() + u16ToString(result1);
}
