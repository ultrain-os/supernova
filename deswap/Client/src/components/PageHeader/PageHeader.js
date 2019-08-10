import React, {Component} from "react";
import {withTranslation} from "react-i18next";
import styles from './style.module.scss'

class PageHeader extends Component {
    constructor(props, context) {
        super(props, context);
        this.state = {
            accountName: ''
        }
    }

    sign = async() => {
        const rs = await window.Cona.sign();
        if(rs.status === 'success') {
            this.setState({
                accountName: rs.data.account_name
            })
            this.props.callback && this.props.callback( rs.data.account_name)
        }
        console.log(rs)
    }

    render() {
        const {accountName} = this.state
        return (
            <div className={styles.container}>
                <div className={styles.left}></div>
                <div className={styles.right}>
                    {!accountName ? <div className={styles.connectBtn} onClick={this.sign}>
                        Connect To Cona
                    </div>: <div className={styles.connectBtn} onClick={this.sign}>
                            {accountName}
                    </div>}

                </div>
            </div>

        );
    }
}

export default withTranslation()(PageHeader);
