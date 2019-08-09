import { Contract } from "ultrain-ts-lib/src/contract";
import { RNAME, NAME } from "ultrain-ts-lib/src/account";
import { Action } from "ultrain-ts-lib/src/action";
import { Log } from "ultrain-ts-lib/src/log";
import { ultrain_assert } from "ultrain-ts-lib/src/utils";
import { DBManager } from "ultrain-ts-lib/src/dbmanager";
import { access } from "fs";


/* 
    
    类名：保险订单
 
    【变量】

    insOrderId：保险订单编号

    insType：保险所属类别编号

    insStatus：保险理赔步骤

    0代表初始化，1代表用户已付保金，2代表用户申请赔保，3代表通过用户赔保，4代表进入人工审查流程，5代表拒绝赔保

    customerID：购保人用户编号

*/

class InsuranceOrder implements Serializable {
    @primaryid
    insOrderID: u64 = 0;
    insType: u64 = 0;
    insStatus: u8 = 0;
    customerID: u32 = 0;
  }

/*

    类名：保险订单
 
    【变量】

    insType：保险类型

    insCompanyID：负责的保险公司编号

    insClaimCheck：本保险由哪些AI公司进行检测

    payPrice：保险费用

    claimPrice：保险额度

    oders：具体保单实例列表

    rates：闪电保险平台手续费率

*/
class InsuranceType implements Serializable {
    @primaryid
    insType: u64 = 0;
    insCompanyID:u64 = 0;
    insClaimCheck: u64[];
    payPrice: u64;
    claimPrice: u64;
    orders: u64[];
    rates: u8 = 0.03;
}

/*

    类名：用户公有数据

    【变量】

    userID：用户编号

    userInsuranceRecord：用户保险记录数组

    age：年龄

    sex：性别

*/

class UserPublicData implements Serializable{
    @primaryid
    userID: u64;
    userInsuranceRecord: u64[];
    age: u8;
    sex: u8 = 0;
}

/*

    类名：用户私有数据（应随机交付可信第三方保存）

    【变量】

    userID：用户编号

    name：真实姓名

    homeLocation：家庭住址

    phoneNumber：电话

    avgIncome：平均年收入

    job：职业工作

*/

class UserPrivateData implements Serializable{
    @primaryid
    userID: u64;
    name: string;
    homeLocation: string;
    phoneNumber: string;
    avgIncome: u32;
    job: string;
}

/*

    类名：用户

    【变量】

    userID：用户编号

    privateDataOwnedBy：私有数据保存者

    privateDataAuthorizedTo：私有数据被谁访问过列表

*/

class User implements Serializable{
    @primaryid
    userID: u64;
    privateDataOwnedBy: u64;
    privateDataAuthorizedTo: u64[];
}

/*

    类名：用户保险记录

    【变量】

    recordID：记录编号

    describe：描述信息

    relatedInsOrder：相关保险订单号（可选填）

*/

class userInsuranceRecord implements Serializable{
    @primaryid
    recordID: u64;
    describe: string;
    relatedInsOrder: u64;
} 

/*

    类名：用户访问控制

    【变量】

    userAddr：用户地址

    userID：用户编号

    accessLevel：访问控制级别

        0 => 初始化

        1 普通用户

        2 VIP用户

        3 AI鉴别方

        4 保险公司

        5 平台管理者

    userIdentity：组织名

*/

class userAccessControl implements Serializable{
    @primaryid  
    userAddr: u64;
    userID: u64;
    accessLevel: u8;
    userIdentity: string;
}

/*

    类名：识别结果

    【变量】

    voteID：每轮识别结果编码

    relatedInsOrder：相关保险订单编号

    voteStatus：投票结果展示

    voteResult：投票结果

        0 => 进行中
        1 => 通过
        2 => 否决
        3 => 未达成共识
         
*/
class voteRecord implements Serializable {
    @primaryid
    voteID: u64;
    relatedInsOrderID: u64;
    voteStatus: bool[];
    voteResult: u64;
}

const insuranceOrderTable = "insuranceOrder";  
const insuranceOrderScope = "s.insuranceOrder";

const insuranceTypeTable = "insuranceType";  
const insuranceTypeScope = "s.insuranceType";

const UserPublicDataTable = "UserPublicData";  
const UserPublicDataScope = "s.UserPublicData";

const userPrivateDataTable = "userPrivateData";
const userPrivateScope = "s.userPrivateData";

const userTable = "user";
const userScope = "s.user";

const userInsuranceRecordTable = "userInsuranceRecord";
const userInsuranceRecordScope = "s.userInsuranceRecord";

const userAccessControlTable = "userAccessControl";
const userAccessControlScope = "s.userAccessControl"

@database(InsuranceOrder,"InsuranceOrder")
@database(InsuranceType,"InsuranceType")
@database(UserPublicData, "UserPublicData")
@database(UserPrivateData, "UserPrivateData")
@database(User, "User")
@database(userInsuranceRecord,"userInsuranceRecord")
@database(userAccessControl, "userAccessControl")

  class LightningContract extends Contract{
    insuranceOrderDB: DBManager<InsuranceOrder>;
    insuranceTypeDB: DBManager<InsuranceType>;
    userPublicDataDB: DBManager<UserPublicData>;
    userPrivateDataDB: DBManager<UserPrivateData>;
    userDB: DBManager<User>;
    userInsuraneRecordDB: DBManager<userInsuranceRecord>;
    userAccessControlDB: DBManager<userAccessControl>;
    insOrderCount: u64;

    /*
    
        初始构造函数，设定平台管理者，建立数据库

    */

    constructor(code: u64){
        super(code);
        this.insOrderCount = 0;
        this.insuranceOrderDB = new DBManager<InsuranceOrder>(NAME(insuranceOrderTable),NAME(insuranceOrderScope));
        this.insuranceTypeDB = new DBManager<InsuranceType>(NAME(insuranceTypeTable),NAME(insuranceTypeScope));
        this.userPublicDataDB = new DBManager<UserPublicData>(NAME(UserPublicDataTable),NAME(UserPublicDataScope));
        this.userPrivateDataDB = new DBManager<UserPrivateData>(NAME(userPrivateDataTable),NAME(userPrivateScope));
        this.userDB = new DBManager<User>(NAME(userTable),NAME(userScope));
        this.userInsuraneRecordDB = new DBManager<userInsuranceRecord>(NAME(userInsuranceRecordTable),NAME(userInsuranceRecordScope));
        this.userAccessControlDB = new DBManager<userAccessControl>(NAME(userAccessControlTable),NAME(userAccessControlScope));
    }

    /*
    
        增加保险类型，由保险公司发起新的保险设计

    */

    @action
    designNewInsurance(insType: u64,payPrice: u64,claimPrice: u64, rates:u64):void{
        let userObj = new userAccessControl();
        let existing = this.userAccessControlDB.get(Action.sender,userObj)
        // 权限检查，未到级别不能执行操作
        ultrain_assert(existing, "Account not Exist!");
        ultrain_assert(userObj.accessLevel>=3,"Sorry, No Enough Access Level. Please Contact Your Administrator.");

        // 初始化新保险
        let insurance = new InsuranceType();
        insurance.insType = insType;
        insurance.payPrice = payPrice;
        insurance.claimPrice = claimPrice;
        insurance.rates = rates;

        this.insuranceTypeDB.emplace(Action.sender, insurance);

    }

    /*
    
        新建保险订单，此时用户已经完成保额支付工作，在区块链上创建该订单

    */

    addInsuranceTypeOrder(insType:u64, orderID:u64):void{
        //检查保险是否存在
        let instypeObj = new InsuranceType();
        let existing = this.insuranceTypeDB.get(insType, instypeObj);
        ultrain_assert(existing, "Account not Exist!");
        
        instypeObj.orders.push(orderID);
    }

    /*

        用户支付保额函数，目前经济价值并未上链，由传统中心化网络实现，当完成后调用该函数

    */

    @action
    userPayIns(insType: u64, customerID:u64):void{
        let insOrder = new InsuranceOrder();
        insOrder.insOrderID = this.insOrderCount++;
        insOrder.insType = insType;
        insOrder.insStatus = 1;
        insOrder.customerID = customerID;
        this.insuranceOrderDB;
        this.addInsuranceTypeOrder(insType, insOrder.insOrderID);
        this.insuranceOrderDB.emplace(Action.sender, insOrder);

    }

    /*
        用户申请理赔
    */

    @action
    userApply(orderID: u64):void{
        let insOrder = new InsuranceOrder();
        let existing = this.insuranceOrderDB.get(orderID, insOrder);
        ultrain_assert(existing, "insurance order does not Exist!");
        insOrder.insStatus ++;

        this.insuranceOrderDB.modify(Action.sender, insOrder);
    }

    /*
        通过用户理赔需求
    */

    @action
    passApplication(orderID: u64){
        let userObj = new userAccessControl();
        let existing = this.userAccessControlDB.get(Action.sender,userObj)
        ultrain_assert(existing, "Account not Exist!");
        ultrain_assert(userObj.accessLevel>=4,"Sorry, No Enough Access Level. Please Contact Your Administrator.");
        let insOrder = new InsuranceOrder();
        existing = this.insuranceOrderDB.get(orderID, insOrder);
        ultrain_assert(existing, "insurance order does not Exist!");
        insOrder.insStatus = 3;

        this.insuranceOrderDB.modify(Action.sender, insOrder);
    }
    
    /*
        AI集体识别失败，重新由人工进行核检
    */
    @action
    waitingApplication(orderID: u64){
        let userObj = new userAccessControl();
        let existing = this.userAccessControlDB.get(Action.sender,userObj)
        ultrain_assert(existing, "Account not Exist!");
        ultrain_assert(userObj.accessLevel>=4,"Sorry, No Enough Access Level. Please Contact Your Administrator.");
        let insOrder = new InsuranceOrder();
        existing = this.insuranceOrderDB.get(orderID, insOrder);
        ultrain_assert(existing, "insurance order does not Exist!");
        insOrder.insStatus = 4;

        this.insuranceOrderDB.modify(Action.sender, insOrder);
    }

    /*
        拒绝用户申请赔保需求
    */

    @action
    rejectApplication(orderID: u64){
        let userObj = new userAccessControl();
        let existing = this.userAccessControlDB.get(Action.sender,userObj)
        ultrain_assert(existing, "Account not Exist!");
        ultrain_assert(userObj.accessLevel>=4,"Sorry, No Enough Access Level. Please Contact Your Administrator.");
        let insOrder = new InsuranceOrder();
        existing = this.insuranceOrderDB.get(orderID, insOrder);
        ultrain_assert(existing, "insurance order does not Exist!");
        insOrder.insStatus = 5;

        this.insuranceOrderDB.modify(Action.sender, insOrder);
    }

    /*
        更新访问控制权限
    */

    @action
    updateACl(userAdrr: u64, userID: u64, accessLevel: u8, userIdentity: string){
        let userObj = new userAccessControl();
        userObj.userAddr = userAdrr;
        userObj.userID = userID;
        userObj.accessLevel = accessLevel;
        userObj.userIdentity = userIdentity;

        this.userAccessControlDB.emplace(userObj);
    }
  }
