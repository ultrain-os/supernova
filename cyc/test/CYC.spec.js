const { createU3, U3Utils } = require('u3.js');
const config = require('../config');

const chai = require('chai');
require('chai')
  .use(require('chai-as-promised'))
  .should();

describe('TestCases', function() {

  it('can create and issue a token and transfer', async () => {

    let SYMBOL = 'CYC';

    const u3 = createU3(config);
    let account = 'cyr12345';
    /*await u3.transaction(account, token => {
      token.create(account, '1000000000000 ' + SYMBOL);
      token.issue(account, '1000000000 ' + SYMBOL, 'issue');
    });

    const currency = await u3.getCurrencyStats({
      'code': account,
      'symbol': SYMBOL
    });
*/
    //must wait
    await U3Utils.test.wait(10000)

    await tr.transfer('cyr12345', 'ben', '100 ' + SYMBOL, 'test', { authorization: [`cyr12345@active`] });
  });
});
