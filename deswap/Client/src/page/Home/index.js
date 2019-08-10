import React, {Component} from "react";
import {Container, Row, Col, Image, Button, Card, Form, InputGroup, DropdownButton, Dropdown} from 'react-bootstrap'
import styles from './style.module.scss'

import skyline from './img/skyline.svg'
import {withTranslation} from "react-i18next";
import tokens from '../../tokens/index'
import arrow from './img/arrow-down.svg'
import {toast} from "react-toastify";
import {PageHeader} from '../../components/PageHeader'
import config from '../../config'
import {createU3, U3Utils} from 'u3.js'

class Home extends Component {
    constructor(props, context) {
        super(props, context);

        this.state = {
            from: tokens.ugas,
            to: tokens.dasan,
            isConnect: false,
            fromAmount: 0,
            toAmount: 0,
            balance: '',
            currentAccount: ''
        }
        this.u3 = createU3(config.u3);
        this.deswapAccountName = 'dasanxuesen2';
        this.deswapContract = null;
        this.options = {
            sign: true, broadcast: true, authorization: 'deuser1@active'
        }
    }

    async componentDidMount() {
        if (typeof window.Cona !== 'undefined') {
            console.log('Cona is enabled')
            this.deswapContract = await this.u3.contract(this.deswapAccountName)
            // console.log(11111, this.deswapContract)
            if (localStorage.getItem('isconnect') === 'connect') {
                return
            }
            const rs = await this.connect()
            // console.log(rs)
            if (rs.status === 'success') {
                localStorage.setItem('isconnect', 'connect')
            }
        } else {
            console.log('Cona is not installed')
        }
    }

    renderDropdownItem = (path) => {

        return Object.keys(tokens).map((item) => {
            if (!tokens[item].account) {
                return null;
            }
            return (
                <Dropdown.Item href="javascript:void(0)"
                               onClick={() => this.changeKey(path, item)}>{tokens[item].symbol}</Dropdown.Item>
            )
        })
    }

    changeKey = (path, key) => {
        const {from, to} = this.state
        if (!path || !key) {
            return;
        }

        if (path === 'to') {
            if (key === from.id) {
                this.setState({
                    from: tokens['empty']
                })
            }
            this.setState({
                to: tokens[key]
            })
        }

        if (path === 'from') {
            if (key === to.id) {
                this.setState({
                    to: tokens['empty']
                })
            }
            this.setState({
                from: tokens[key]
            })
        }

        setTimeout(() => {
            this.getBalance()
        }, 100)
    }

    ugasToTokenQuery = async (amount, accountName, symbol) => {

        if (!this.deswapContract) {
            return 0
        }
        console.log(333, `${parseFloat(amount).toFixed(4)} UGAS`, `4 ${accountName} 0 ${symbol}`)

        const rs = await this.deswapContract.ugasToTokenQuery(`${parseFloat(amount).toFixed(4)} UGAS`, `4 ${accountName} 0 ${symbol}`, this.options)
        // console.log(444, this.deswapContract)
        return rs.processed.action_traces[0].return_value
    }

    tokenToUgasQuery = async (amount, accountName, symbol) => {
        if (!this.deswapContract) {
            return 0
        }
        console.log(333, `${parseFloat(amount).toFixed(4)} ${symbol}`, `3 ${accountName} 0`)
        const rs = await this.deswapContract.tokenToUgasQuery(`${parseFloat(amount).toFixed(4)} ${symbol}`, `3 ${accountName} 0`, this.options)
        return rs.processed.action_traces[0].return_value
    }

    getBalance = async (accountName = this.state.currentAccount) => {
        if (!accountName) return;
        const {from} = this.state
        console.log('getBalance', accountName)
        const balance = await this.u3.getCurrencyBalance({
            "code": from.account,
            "account": accountName,
            "symbol": from.symbol.toUpperCase()
        });

        if (balance && balance.length > 0) {
            this.setState({
                balance: balance[0]
            })
        } else {
            this.setState({
                balance: 0
            })
        }
    }

    connect = async () => {

        const rs = await window.Cona.connectRequest();
        // const chain = await window.Cona.getCurrentNetworkChains()
        // console.log(chain)
        return rs
    }

    interchang = () => {
        const {from, to} = this.state;

        this.setState({
            to: tokens[from.id],
            from: tokens[to.id],
        })
    }

    inputChange = async (stateKey, evt) => {
        // console.log(stateKey, evt.target.value)
        const {from, to, fromAmount} = this.state
        this.setState({
            [stateKey]: evt.target.value
        })

        let amount = 0
        if (stateKey === 'fromAmount') {
            if (from.id === 'ugas') {

                amount = await this.ugasToTokenQuery(evt.target.value, to.account, to.symbol)
            } else {
                amount = await this.tokenToUgasQuery(evt.target.value, from.account, from.symbol)
            }
            // console.log(222, amount)
            this.setState({
                toAmount: (amount/10000).toFixed(4)
            })
        } else {
            if (to.id === 'ugas') {
                amount = await this.ugasToTokenQuery(evt.target.value, from.account, from.symbol)
            } else {
                amount = await this.tokenToUgasQuery(evt.target.value, to.account, to.symbol)
            }
            // console.log(222, amount)
            this.setState({
                fromAmount: (amount/10000).toFixed(4)
            })
        }


    }

    getParams = () => {
        const {from, to, fromAmount} = this.state
        const _to = 'dasanxuesen2';
        // ugas to token
        if (from.id === 'ugas') {
            return {
                to: _to,
                contract: from.account,
                quantity: fromAmount,
                symbol: from.symbol,
                memo: `4 ${to.account} 0 ${to.symbol}`
            }
        } else {
            // token to ugas
            return {
                to: _to,
                contract: from.account,
                quantity: fromAmount,
                symbol: from.symbol.toUpperCase(),
                memo: `3 ${from.account} 0`
            }
        }
    }

    getArrayParams = () => {
        const {from, to, fromAmount, currentAccount} = this.state
        const _to = 'dasanxuesen2';
        // ugas to token
        if (from.id === 'ugas') {
            // return {
            //     to: _to,
            //     contract: from.account,
            //     quantity: fromAmount,
            //     symbol: from.symbol,
            //     memo: `4 ${to.account} 0 ${to.symbol}`
            // }

            return {
                contract: from.account,
                params: [currentAccount, _to, parseFloat(fromAmount).toFixed(4) + ' ' + from.symbol, `4 ${to.account} 0 ${to.symbol}`]
            }
        } else {
            // token to ugas
            // return {
            //     to: _to,
            //     contract: from.account,
            //     quantity: fromAmount,
            //     symbol: from.symbol.toUpperCase(),
            //     memo: `3 ${from.account} 0`
            // }
            return {
                contract: from.account,
                params: [currentAccount, _to, parseFloat(fromAmount).toFixed(4) + ' ' + from.symbol, `3 ${from.account} 0`]
            }

        }
    }

    formToast = (text) => {
        toast.info(text, {
            position: toast.POSITION.TOP_RIGHT,
        });
    }

    formErrorToast = (text) => {
        toast.error(text, {
            position: toast.POSITION.TOP_RIGHT,
        });
    }

    checkForm = () => {
        const {from, to, fromAmount, currentAccount} = this.state
        if(!currentAccount) {
            this.formErrorToast('Please connect to Cona')
            return false
        }

        if (!fromAmount) {
            this.formErrorToast('Swap amount is empty')
            return false
        }

        if (!to.account || !from.account) {
            this.formErrorToast('From account or To account is Empty')
            return false
        }



        return true
    }

    sign = (accountName) => {
        this.setState({
            currentAccount: accountName
        })
        this.getBalance(accountName)
    }

    swap = async () => {
        if (!this.checkForm()) {
            return false;
        }

        const params = this.getArrayParams()
        console.log(params)

        // const u3 = this.u3;
        const contract = params.contract;
        const action = 'transfer';
        // const params = ['ben', 32, 'test'];
        const result = await window.Cona.getCurrentNetworkChains();
        console.log(result)
        if (result.success) {
            //...决定该合约所在链的id
            const trx = await window.Cona.callContract({
                contract,
                action,
                params: params.params,
                chainId: result.data[1]._id
            });
            console.log(trx)

            if (!trx || trx.data &&  trx.data.processed.receipt.status !== "executed") {
                console.log("the transaction was failed");
                return;
            }

            // 然后检查在过期之前有没有置为不可回滚
            let timeout = new Date(trx.data.transaction.transaction.expiration + "Z") - new Date();
            let finalResult = false;
            try {
                await U3Utils.test.waitUntil(async () => {
                    let tx = await this.u3.getTxByTxId(trx.data.transaction_id);
                    finalResult = tx && tx.irreversible;
                    if (finalResult) return true;
                }, timeout, 1000);
            } catch (e) {
                console.log(e, finalResult);
            }
        } else {
            console.log(result.msg)
        }


        // window.Cona.send(params).then(async (trx) => {
        //     // trx为链上返回的交易详情，需要通过u3轮询交易来确认交易结果
        //     console.log(trx);
        //
        //     // 以下为检查交易最终是否确认的过程
        //     // 首先检查交易执行状态有没有失败
        //     // if (!trx || trx.data.processed.receipt.status !== "executed") {
        //     //     console.log("the transaction was failed");
        //     //     return;
        //     // }
        //     //
        //     // // 然后检查在过期之前有没有置为不可回滚
        //     // let timeout = new Date(trx.data.transaction.transaction.expiration + "Z") - new Date();
        //     // let finalResult = false;
        //     // try {
        //     //     await u3.U3Utils.test.waitUntil(async () => {
        //     //         let tx = await u3.getTxByTxId(trx.data.transaction_id);
        //     //         finalResult = tx && tx.irreversible;
        //     //         if (finalResult) return true;
        //     //     }, timeout, 1000);
        //     // } catch (e) {
        //     //     console.log(finalResult);
        //     // }
        //
        // }).catch((e) => {
        //     // 处理异常
        //     console.log(e);
        // })
    }

    render() {
        const {from, to, balance, fromAmount, toAmount} = this.state
        return (
            <div className={styles.body}>
                <PageHeader transparent={true} callback={this.sign}/>

                <Container className={styles.container}>
                    <section className={styles.titleBox}>
                        <h1>Ultrain Deswap</h1>
                        <p>Enter your swap amount to start your exchange journey. Deswap will always be with you.</p>
                    </section>
                    <section className={styles.formBox}>
                        <Form className={styles.box}>
                            <Form.Group controlId="" className={`${styles.formGroup} ${styles.formGroupFrom}`}>
                                <Form.Control type="text" placeholder="Enter amount" value={fromAmount}
                                              onInput={(v) => this.inputChange('fromAmount', v)}/>
                                <DropdownButton
                                    as={InputGroup.Append}
                                    variant="outline-secondary"
                                    title={from.symbol}
                                    className={styles.dropdown}
                                >
                                    {this.renderDropdownItem('from')}
                                    <Dropdown.Divider/>
                                    <Dropdown.Item href="#">Coming Soon</Dropdown.Item>
                                </DropdownButton>
                            </Form.Group>
                            <div className={styles.sort}>
                                <p>Max : {balance || '--'}</p><img onClick={this.interchang} src={arrow}/><p></p>
                            </div>
                            <Form.Group controlId="formBasicEmail" className={styles.formGroup}>
                                <Form.Control type="text" placeholder="Enter amount" value={toAmount}
                                              onInput={(v) => this.inputChange('toAmount', v)}/>
                                <DropdownButton
                                    as={InputGroup.Append}
                                    variant="outline-secondary"
                                    title={to.symbol}
                                    className={styles.dropdown}
                                >
                                    {this.renderDropdownItem('to')}
                                    <Dropdown.Divider/>
                                    <Dropdown.Item href="#">Coming Soon</Dropdown.Item>
                                </DropdownButton>
                            </Form.Group>
                            <Button variant="primary" type="button" onClick={this.swap}
                                    className={styles.exchangeBtn}>
                                Swap
                            </Button>
                        </Form>
                    </section>
                </Container>
                <img src={skyline} className={styles.bg} aria-hidden="true"/>
            </div>
        );
    }
}

export default withTranslation()(Home);
