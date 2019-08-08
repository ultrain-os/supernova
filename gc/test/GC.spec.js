const { createU3, U3Utils, format } = require('u3.js');
const config = require('../config');
const account1 = 'gc';

describe('Test cases', function() {

  it('createToken', async () => {

    const u3 = createU3(config);
    await u3.transaction(account1, token => {
      token.create(account1, '1000000000000000 GC');
      token.issue(account1, '1000000000000000 GC', 'issue');
    });

    await u3.getCurrencyStats({
      'code': account1,
      'symbol': 'GC',
    });
  });


  it('addGC', async () => {

    const u3 = createU3(config);
    let c = await u3.contract(account1);
    await c.add('sdfaf213','158****9468', '1.png', 'benyasin1', '2019-08-07 12:12:00', '小龙虾的分类', JSON.stringify([{ desc: '龙虾头是湿垃圾' }, { image: '2.png' }, { sort: '湿垃圾' }]), 'false', '10', {
      authorization: ['gc@active'],
    });

  });


  it('transferToken', async () => {

    account2 = 'benyasin1';

    const u3 = createU3(config);
    await u3.transaction(account1, c => {
      c.transfer(account1, account2, '1 GC', 'init');
    });

    await u3.getCurrencyBalance({
      'code': account1,
      'account': account2,
      'symbol': 'GC',
    });
  });
});
