const { createU3, U3Utils,format } = require('u3.js/src');
const config = require('../config');
const account1 = 'stray1';

describe('Test cases', function() {

  it('createToken', async () => {

    const u3 = createU3(config);
    await u3.transaction(account1, token => {
      token.create(account1, '100000000000 DOG');
      token.issue(account1, '100000000000 DOG', 'issue');
    });

    await u3.getCurrencyStats({
      'code': account1,
      'symbol': 'DOG',
    });
  });


  it('addDog', async () => {

    const u3 = createU3(config);
    let c = await u3.contract(account1);
    await c.saveOrUpdate('BJ1901001', '小白', 'abc123','小型犬', '男孩', '四个月','5', ['img/1565196092883.jpeg', 'img/1565198088019.jpeg'], '刚被救回来时有很严重的皮肤病，3兄妹也有不同程度的顽疾，在接受了全面的治疗后，我已经能吃能喝很健康了，我有一点粘人，性格很腼腆，我渴望有个家，我会很乖，你愿意带我回家吗？', 'ben', '158****9468', {
      authorization: ['stray1@active'],
    });

  });

  it('updateDog', async () => {

    const u3 = createU3(config);
    let c = await u3.contract(account1);
    await c.saveOrUpdate('123', '小白', 'abc1','黑背', 'man', '四个月','2', ['3.png', '2.png'], '浏览街头', 'bob', '158****9468', {
      authorization: ['stray1@active'],
    });

  });

  it('queryDog', async () => {

    const u3 = createU3(config);
    let c = await u3.contract(account1);
    let a = await c.queryByNumber('BJ1902002', {
      authorization: ['stray1@active'],
    });
    console.log(a.processed.action_traces[0].return_value)
  });


  it('queryDog2', async () => {

    const u3 = createU3(config);
    const balance = await u3.getTableRecords({
      code: account1,//smart contract name
      scope: 'dogs.info',//account name
      table: 'dogs.info',//table name
      json: true,
    });

  });

  it('transferToken', async () => {

    const u3 = createU3(config);
    await u3.transaction(account1, c => {
      c.transfer(account1, 'cona1', '1000000 DOG', 'init');
    });
  });
});
