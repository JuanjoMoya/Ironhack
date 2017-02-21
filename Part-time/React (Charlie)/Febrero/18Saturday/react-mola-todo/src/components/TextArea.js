import React, {Component} from 'react';

class TextArea extends Component {
  constructor(){
    super();
    this.state = {
      // text: "Pataticas!"
      a: "Pataticas!",
      b: "Pataticas"
    }
    this.update = this.update.bind(this)
  }

  update(event){
    this.setState({
      // text: event.type

      a: this.refs.a.value? this.refs.a.value : this.state.a,
      b: this.refs.b.value
    })
  }

  render(){
    return(
      <div>
        <textarea
          ref="a"
          onChange={this.update}
          // onKeyPress={this.update}
          // onCopy={this.update}
          // onCurt={this.update}
          // onFocus={this.update}
          // onBlur={this.update}
          // onDoubleClick={this.update}
          // onTouchStart={this.update}
          // onTouchMove={this.update}
          // onTouchEnd={this.update}>
        </textarea>
        <p>{this.state.a}</p>


        <textarea
          ref="b"
          onChange={this.update}
          // onKeyPress={this.update}
          // onCopy={this.update}
          // onCurt={this.update}
          // onFocus={this.update}
          // onBlur={this.update}
          // onDoubleClick={this.update}
          // onTouchStart={this.update}
          // onTouchMove={this.update}
          // onTouchEnd={this.update}>
        </textarea>
        <p>{this.state.b}</p>


      </div>
    )
  }
}

export default TextArea;
