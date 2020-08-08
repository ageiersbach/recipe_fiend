import React from "react"
import PropTypes from "prop-types"
class FlashNotice extends React.Component {

  constructor(props) {
    super(props);
    this.state = { message: props.message };
  }

  clearMessage() {
    this.setState({
      message: null
    });
  }

  render () {
    if (!this.state.message) {
      return null;
    }

    return (
      <div class="flash-message">
        <p class="notice">
          {this.state.message}
        </p>
        <button class="btn btn-sm" onClick={() => this.clearMessage()}>
          <i class="fas fa-times"></i>
        </button>
      </div>
    );
  }
}

FlashNotice.propTypes = {
  message: PropTypes.string
};
export default FlashNotice
