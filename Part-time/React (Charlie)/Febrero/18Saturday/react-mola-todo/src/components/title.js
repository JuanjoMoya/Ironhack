import React, {Component} from 'react';

class Title extends Component {
  render(){
    return(
      <h1>Hello {this.props.name}  !!!</h1>
    );
  }
}

Title.propTypes = {
  name: React.PropTypes.string.isRequired
}

Title.defaultProps = {
  name: "Alexusaaa"
}


export default Title;
