import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import Title from './components/title';
import TextArea from './components/TextArea';

class App extends Component {
  render() {
    let name = "Pepito"
    return (

      <div>
        <Title />

          <TextArea />

      </div>
    );
  }
}




export default App;
