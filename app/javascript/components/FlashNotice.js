import React from "react"
import PropTypes from "prop-types"
class FlashNotice extends React.Component {
  render () {
    return (
      <div class="flash-message">
        <p class="notice">
          {this.props.message}
        </p>
        <button class="btn btn-sm">
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
