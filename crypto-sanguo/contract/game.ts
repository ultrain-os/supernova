import { Action } from 'ultrain-ts-lib/src/action';
import { Asset, SYS, StringToSymbol } from 'ultrain-ts-lib/src/asset';
import { Contract } from 'ultrain-ts-lib/src/contract';
import { Log } from 'ultrain-ts-lib/src/log';
import { EventObject, emit } from 'ultrain-ts-lib/src/events';
import { NAME, RNAME } from 'ultrain-ts-lib/src/account';
import { Return } from 'ultrain-ts-lib/src/return';
import { now } from 'ultrain-ts-lib/src/time';

import { processBattleResult, BattleResult } from './battle';

import { BattleStatus, UnitStatus } from './data_in_memory';

import {
  Unit,
  Item,
  RID,
  UnitInfo,
  ItemInfo,
  Stage,
  StageBattle,
  StageProgress,
  Duel,
  User
} from './data_in_db';

import { random, u16ToString, unitToStr, itemToStr } from './helper';

const UNIT_LIMIT: u8 = 3;
const ITEM_LIMIT: u8 = 3;
const MAX_ENERGY: u8 = 5;

const tbUnit: string = 'tb.unit';
const tbItem: string = 'tb.item';
const tbRID: string = 'tb.rid';
const tbUnitInfo: string = 'tb.unitinfo';
const tbItemInfo: string = 'tb.iteminfo';
const tbStage: string = 'tb.stage';
const tbStageBattle: string = 'tb.stagebat';
const tbStageProgress: string = 'tb.stageprog';
const tbUser: string = 'tb.user';

const global: string = 'global';

@database(Unit, tbUnit)
@database(Item, tbItem)
@database(RID, tbRID)
@database(UnitInfo, tbUnitInfo)
@database(ItemInfo, tbItemInfo)
@database(Stage, tbStage)
@database(StageBattle, tbStageBattle)
@database(StageProgress, tbStageProgress)
@database(User, tbUser)
class Game extends Contract {

  dbUnit: DBManager<Unit>;
  dbItem: DBManager<Item>;
  dbRID: DBManager<RID>;
  dbUnitInfo: DBManager<UnitInfo>;
  dbItemInfo: DBManager<ItemInfo>;
  dbStage: DBManager<Stage>;
  dbUser: DBManager<User>;

  constructor(code: u64) {
    super(code);

    this.dbUnit = new DBManager<Unit>(NAME(tbUnit), NAME(global));
    this.dbItem = new DBManager<Item>(NAME(tbItem), NAME(global));
    this.dbRID = new DBManager<RID>(NAME(tbRID), NAME(global));
    this.dbUnitInfo = new DBManager<UnitInfo>(NAME(tbUnitInfo), NAME(global));
    this.dbItemInfo = new DBManager<ItemInfo>(NAME(tbItemInfo), NAME(global));
    this.dbStage = new DBManager<Stage>(NAME(tbStage), NAME(global));
    this.dbUser = new DBManager<User>(NAME(tbUser), NAME(global));
  }

  @action
  addUnit(unitId: u64,
          hp: u16,
          hpStep: u16,
          attack: u16,
          attackStep: u16,
          intelligence: u16,
          intelligenceStep: u16,
          defense: u16,
          defenseStep: u16,
          agility: u16,
          agilityStep: u16,
          luck: u16,
          luckStep: u16,
          price: u64,
          priceStep: u64): void {
    ultrain_assert(Action.sender == this.receiver, 'contract owner only');

    var existing = this.dbUnit.exists(unitId);
    ultrain_assert(!existing, 'unit already exists');

    var unit = new Unit();
    unit.unitId = unitId;
    unit.hp = hp;
    unit.hpStep = hpStep;
    unit.attack = attack;
    unit.attackStep = attackStep;
    unit.intelligence = intelligence;
    unit.intelligenceStep = intelligenceStep;
    unit.defense = defense;
    unit.defenseStep = defenseStep;
    unit.agility = agility;
    unit.agilityStep = agilityStep;
    unit.luck = luck;
    unit.luckStep = luckStep;
    unit.price = price;
    unit.priceStep = priceStep;
    unit.luck = luck;
    unit.luckStep = luckStep;
    unit.price = price;
    unit.priceStep = priceStep;
    unit.soldAmount = 0;

    this.dbUnit.emplace(unit);
  }

  @action
  addItem(itemId: u64,
          hp: u16,
          attack: u16,
          intelligence: u16,
          defense: u16,
          agility: u16,
          luck: u16,
          worth: u64): void {
    ultrain_assert(Action.sender == this.receiver, 'contract owner only');

    var existing = this.dbItem.exists(itemId);
    ultrain_assert(!existing, 'item already exists');

    var item = new Item();
    item.itemId = itemId;
    item.hp = hp;
    item.attack = attack;
    item.intelligence = intelligence;
    item.defense = defense;
    item.agility = agility;
    item.luck = luck;
    item.worth = worth;

    this.dbItem.emplace(item);
  }

  @action
  setBattleInStage(stageId: u64,
                   battleIndex: u64,
                   npcUnitIdArray: u64[],
                   npcLevelArray: u8[],
                   dropItemIdArray: u64[],
                   dropChanceArray: u16[],
                   dropSGTLow: u64,
                   dropSGTHigh: u64): void {
    ultrain_assert(Action.sender == this.receiver, 'contract owner only');
    ultrain_assert(npcUnitIdArray.length == UNIT_LIMIT, 'invalid input');
    ultrain_assert(npcLevelArray.length == UNIT_LIMIT, 'invalid input');
    ultrain_assert(dropItemIdArray.length == dropChanceArray.length, 'invalid input');

    const dbStageBattle = new DBManager<StageBattle>(NAME(tbStageBattle), stageId);

    const sb = new StageBattle();
    sb.battleIndex = battleIndex;
    sb.npcUnitIdArray = npcUnitIdArray;
    sb.npcLevelArray = npcLevelArray;
    sb.dropItemIdArray = dropItemIdArray;
    sb.dropChanceArray = dropChanceArray;
    sb.dropSGTLow = dropSGTLow;
    sb.dropSGTHigh = dropSGTHigh;

    var existing = dbStageBattle.exists(battleIndex);

    if (existing) {
      dbStageBattle.modify(sb);
    } else {
      dbStageBattle.emplace(sb);
    }
  }

  @action
  setStage(stageId: u64,
           dependencyStageId: u64,
           battleAmount: u8): void {
    ultrain_assert(Action.sender == this.receiver, 'contract owner only');

    const stage = new Stage();
    stage.stageId = stageId;
    stage.dependencyStageId = dependencyStageId;
    stage.battleAmount = battleAmount;

    var existing = this.dbStage.exists(stageId);

    if (existing) {
      this.dbStage.modify(stage);
    } else {
      this.dbStage.emplace(stage);
    }
  }

  @action
  start(): void {
    const user = new User();
    const userExisting = this.dbUser.get(Action.sender, user);
    ultrain_assert(!userExisting, 'user exists');
    user.user = Action.sender;
    user.defenseUnitIdArray = [];
    user.duelScore = 1000;
    user.winTime = 0;
    user.loseTime = 0;
    user.unitIdArray = [];
    user.unitRIdArray = [];
    user.itemRIdArray = [];
    user.record = '';
    user.duelHistory = [];
    this.dbUser.emplace(user);
  }

  @action('pureview')
  isStarted(): boolean {
    return this.dbUser.exists(Action.sender);
  }

  @action('pureview')
  canPlay(stageId: u64, battleIndex: u64): boolean {
    const stage = new Stage();
    const stageExisting = this.dbStage.get(stageId, stage);

    if (!stageExisting) {
      return false;
    }

    if (stage.dependencyStageId) {
      const dbP1 = new DBManager<StageProgress>(NAME(tbStageProgress), stage.dependencyStageId);
      const stageP1 = new StageProgress();
      const existingP1 = dbP1.get(Action.sender, stageP1);
      if (!existingP1 || !stageP1.finished) {
        return false;
      }
    }

    const dbP2 = new DBManager<StageProgress>(NAME(tbStageProgress), stageId);
    const stageP2 = new StageProgress();
    const existingP2 = dbP2.get(Action.sender, stageP2);

    if (!existingP2) {
      return battleIndex == 0;
    }

    return battleIndex <= stageP2.battleIndex;
  }

  @action('pureview')
  getProgress(stageId: u64): u64 {
    const db = new DBManager<StageProgress>(NAME(tbStageProgress), stageId);
    const stageP = new StageProgress();
    const existingP = db.get(Action.sender, stageP);
    if (!existingP) {
      return 0;
    }
    return stageP.battleIndex;
  }

  _max64(a: u64, b: u64): u64 {
    return a > b ? a : b;
  }

  _min64(a: u64, b: u64): u64 {
    return a < b ? a : b;
  }

  @action
  finishStageBattle(stageId: u64, battleIndex: u64): void {
    const stage = new Stage();
    const stageExisting = this.dbStage.get(stageId, stage);

    if (!stageExisting) {
      return;
    }

    const db = new DBManager<StageProgress>(NAME(tbStageProgress), stageId);
    const stageP = new StageProgress();
    const existingP = db.get(Action.sender, stageP);

    if (existingP) {
      stageP.battleIndex = this._min64(stage.battleAmount - 1, this._max64(battleIndex, stageP.battleIndex));
    } else {
      stageP.battleIndex = this._min64(stage.battleAmount - 1, battleIndex);
    }

    stageP.finished = stageP.battleIndex == stage.battleAmount - 1;

    if (existingP) {
      db.modify(stageP);
    } else {
      db.emplace(stageP);
    }
  }

  _generateRID(): u64 {
    const rIdObj = new RID();
    const existing = this.dbRID.get(1, rIdObj);
    if (existing) {
      ++rIdObj.rId;
    } else {
      rIdObj.rId = 1;
    }
    rIdObj.fixedId = 1;

    if (existing) {
      this.dbRID.modify(rIdObj);
    } else {
      this.dbRID.emplace(rIdObj);
    }

    return rIdObj.rId;
  }

  @action
  buyFromPlatform(unitId: u64, amount: Asset): void {
    const unit = new Unit();
    const unitExisting = this.dbUnit.get(unitId, unit);
    ultrain_assert(unitExisting, 'unit exists');

    const user = new User();
    const userExisting = this.dbUser.get(Action.sender, user);
    ultrain_assert(userExisting, 'user exists');
    ultrain_assert(user.unitIdArray.indexOf(unitId) < 0, 'already have unit');

    const unitPrice: Asset = new Asset(unit.price, StringToSymbol(4, 'UGAS'));
    ultrain_assert(amount.gte(unitPrice), 'need to pay enough');

    Asset.transfer(Action.sender, Action.receiver, amount, 'buyFromPlatform');

    const unitInfo: UnitInfo = new UnitInfo();
    unitInfo.rId = this._generateRID();
    unitInfo.level = 1;
    unitInfo.itemRIdArray = [];
    unitInfo.energyAmount = MAX_ENERGY;
    unitInfo.energyTime = 0;

    this.dbUnitInfo.emplace(unitInfo);

    user.unitIdArray.push(unitId);
    user.unitRIdArray.push(unitInfo.rId);
    this.dbUser.modify(user);
  }

  @action('pureview')
  getMyUnitIdArray(): string {
    const user = new User();
    const userExisting = this.dbUser.get(Action.sender, user);
    if (!userExisting) {
      return '[]';
    }

    var result = '';

    for (let i = 0; i < user.unitIdArray.length; ++i) {
      result = result + u16ToString(u16(user.unitIdArray[i]));
    }

    return result;
  }

  @action('pureview')
  getMyUnitById(unitId: u64): string {
    const unit = new Unit();
    const unitExisting = this.dbUnit.get(unitId, unit);
    ultrain_assert(unitExisting, 'unit exists');

    const user = new User();
    const userExisting = this.dbUser.get(Action.sender, user);
    ultrain_assert(userExisting, 'user exists');

    const index = user.unitIdArray.indexOf(unitId);
    ultrain_assert(index >= 0, 'have unit');
    const rId = user.unitRIdArray[index];

    const unitInfo: UnitInfo = new UnitInfo();
    const infoExisting = this.dbUnitInfo.get(rId, unitInfo);
    ultrain_assert(infoExisting, 'unitInfo exists');

    return unitToStr(unit, unitInfo, now());
  }

  @action('pureview')
  getMyItemRIdArray(): string {
    const user = new User();
    const userExisting = this.dbUser.get(Action.sender, user);
    if (!userExisting) {
      return '[]';
    }

    var result = '';

    for (let i = 0; i < user.itemRIdArray.length; ++i) {
      result = result + u16ToString(u16(user.itemRIdArray[i]));
    }

    return result;
  }

  @action('pureview')
  getMyItemByRId(rId: u64): string {
    const itemInfo: ItemInfo = new ItemInfo();
    const infoExisting = this.dbItemInfo.get(rId, itemInfo);
    ultrain_assert(infoExisting, 'itemInfo exists');

    const item = new Item();
    const itemExisting = this.dbItem.get(itemInfo.itemId, item);
    ultrain_assert(itemExisting, 'item exists');

    return itemToStr(item, itemInfo);
  }

  _maybeDrop(stageBattle: StageBattle, nonce: u16): string {
    var result = '';

    for (let i: u16 = 0; i < u16(stageBattle.dropItemIdArray.length); ++i) {
      const itemId: u64 = stageBattle.dropItemIdArray[i];
      const randomNumber = u16((random(nonce + i) % 1000) / 1000);
      if (randomNumber < stageBattle.dropChanceArray[i]) {
        result = result + u16ToString(u16(itemId));
      }
    }

    const tokenAmount: u64 = stageBattle.dropSGTLow +
        random(nonce + u16(stageBattle.dropItemIdArray.length)) %
        (stageBattle.dropSGTHigh - stageBattle.dropSGTLow);

    return u16ToString(u16(tokenAmount)) + result;
  }

  @action
  battleWithStage(unitIdArray: u64[], stageId: u64, battleIndex: u64): string {
    ultrain_assert(unitIdArray.length == UNIT_LIMIT, 'UNIT_LIMIT');

    const user = new User();
    const userExisting = this.dbUser.get(Action.sender, user);
    ultrain_assert(userExisting, 'User exists');

    const battleStatus: BattleStatus = new BattleStatus();

    var i: i32;

    // Fill in my status

    for (i = 0; i < unitIdArray.length; ++i) {
      const unitStatus: UnitStatus = new UnitStatus();

      if (unitIdArray[i]) {
        const unit = new Unit();
        const unitExisting = this.dbUnit.get(unitIdArray[i], unit);
        ultrain_assert(unitExisting, 'Unit exists');

        const index = user.unitIdArray.indexOf(unitIdArray[i]);
        ultrain_assert(index >= 0, 'have unit');
        const rId = user.unitRIdArray[index];

        const unitInfo: UnitInfo = new UnitInfo();
        const infoExisting = this.dbUnitInfo.get(rId, unitInfo);
        ultrain_assert(infoExisting, 'unitInfo exists');

        const itemArray: Item[] = [];
        const itemInfoArray: ItemInfo[] = [];

        for (let j = 0; j < unitInfo.itemRIdArray.length; ++j) {
          const itemInfo: ItemInfo = new ItemInfo();
          const itemInfoExisting = this.dbItemInfo.get(
              unitInfo.itemRIdArray[j], itemInfo);
          ultrain_assert(itemInfoExisting, 'itemInfo exists');

          const item = new Item();
          const itemExisting = this.dbItem.get(itemInfo.itemId, item);
          ultrain_assert(itemExisting, 'item exists');

          itemArray.push(item);
          itemInfoArray.push(itemInfo);
        }

        unitStatus.fromPlayer(unit, unitInfo, itemArray, itemInfoArray);
      }

      battleStatus.myArray.push(unitStatus);
    }

    // Fill in npc status
    const dbStageBattle = new DBManager<StageBattle>(NAME(tbStageBattle), stageId);

    const sb = new StageBattle();
    const existingSB = dbStageBattle.get(battleIndex, sb);

    ultrain_assert(existingSB, 'StageBattle exists');
    ultrain_assert(sb.npcUnitIdArray.length == UNIT_LIMIT, 'NPC amount');
    ultrain_assert(sb.npcLevelArray.length == UNIT_LIMIT, 'NPC amount');

    for (i = 0; i < sb.npcUnitIdArray.length; ++i) {
      const unitStatus: UnitStatus = new UnitStatus();

      if (sb.npcUnitIdArray[i]) {
        const unit = new Unit();
        const unitExisting = this.dbUnit.get(sb.npcUnitIdArray[i], unit);
        ultrain_assert(unitExisting, 'Unit exists');

        unitStatus.fromNPC(unit, sb.npcLevelArray[i]);
      }

      battleStatus.enemyArray.push(unitStatus);
    }

    const battleResult: BattleResult = processBattleResult(battleStatus);

    if (battleResult.didIWin) {
      return 'W' + battleResult.record +
          this._maybeDrop(sb, u16(stageId * 256 + battleIndex + user.user));
    } else {
      return 'L' + battleResult.record;
    }
  }
}
