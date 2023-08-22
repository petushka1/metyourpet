import React from 'react';
import axios from 'axios';

class SignIn extends React.Component {
  handleXUMMLogin = async () => {
    try {
      const response = await axios.get('/create_login');
      window.location.href = response.data.url;
    } catch (error) {
      console.error('Error initiating XUMM sign-in:', error);
    }
  };

  render() {
    return (
      <div>
        <h1>Meet Your Pet with Xumm Wallet</h1>
        <button onClick={this.handleXUMMLogin}>Xumm Sign In</button>
      </div>
    );
  }
}

export default SignIn;
