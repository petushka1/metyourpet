import React, { useState } from 'react';
import axios from 'axios';
import QRCode from 'qrcode.react';
import { XummSdkJwt } from 'xumm-sdk';

const ShelterRegistration = () => {
  const [token, setToken] = useState('');
  const [qrImageUrl, setQrImageUrl] = useState('');

  const handleXUMMLogin = async () => {
    try {
      const response = await axios.get('/create_login');
      const xummSdkJwt = new XummSdkJwt(response.data.apiKey);
      const xummResponse = await xummSdkJwt.open(response.data.payload);

      if (xummResponse.meta && xummResponse.meta.responded) {
        setQrImageUrl(xummResponse.refs.qr_png);
      }
    } catch (error) {
      console.error('Error initiating XUMM sign-in:', error);
    }
  };

  return (
    <div>
      <h2>Shelter Registration</h2>
      {token ? (
        <p>Signed in successfully! User token: {token}</p>
      ) : (
        <div>
          <button onClick={handleXUMMLogin}>Sign in with XUMM</button>
          {qrImageUrl && <img src={qrImageUrl} alt="XUMM QR Code" />}
        </div>
      )}
    </div>
  );
};

export default ShelterRegistration;
