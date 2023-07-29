import React from 'react';
import axios from 'axios';
import { XummSdkJwt } from 'xumm-sdk'; // Import the XummSdkJwt constructor from the SDK

const ShelterRegistration = () => {
  const handleXUMMLogin = async () => {
    try {
      // Make a GET request to your Rails backend to initiate XUMM sign-in
      const response = await axios.get('/create_payload'); // Use the relative URL

      // Redirect to the XUMM sign-in page using XUMM SDK
      const xummSdkJwt = new XummSdkJwt(response.data.apiKey); // Pass the API key from the response
      xummSdkJwt.open(response.data.payload);
    } catch (error) {
      console.error('Error initiating XUMM sign-in:', error);
    }
  };

  return (
    <div>
      <h2>Shelter Registration</h2>
      <button onClick={handleXUMMLogin}>Sign in with XUMM</button>
    </div>
  );
};

export default ShelterRegistration;