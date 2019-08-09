import React, {Component} from 'react';
import Routes from './Routes'
import './App.scss'
import {ToastContainer, toast} from 'react-toastify';

import 'react-toastify/dist/ReactToastify.css';


class App extends Component {
    render() {
        return (
            <div className="App">
                <Routes/>
                <ToastContainer autoClose={2000}/>
            </div>
        );
    }
}

export default App;
