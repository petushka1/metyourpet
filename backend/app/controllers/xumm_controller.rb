class XummController < ApplicationController
  # ... (other actions)

  def create_login
    payload_data = {
      txjson: {
        TransactionType: 'SignIn'
        # Add other custom fields specific to your application as needed
      },
      options: {
        submit: true,
        return_url: xumm_callback_url
      }
    }.to_json

    api_url = 'https://xumm.app/api/v1/platform/payload'
    api_key = ENV['XUMM_API_KEY']
    api_secret = ENV['XUMM_API_SECRET']

    headers = {
      'Content-Type': 'application/json',
      'x-api-key': api_key,
      'x-api-secret': api_secret
    }

    response = RestClient.post(api_url, payload_data, headers)

    if response.code == 200
      payload = JSON.parse(response.body)
      render json: { url: payload['next']['always'] }
    else
      render plain: 'Error: Unable to create XUMM sign-in payload'
    end
  end

  def callback
    if params[:status] == 'signed'
      user_token = SecureRandom.uuid
      session[:user_token] = user_token
      session[:wallet_address] = params[:user_address] # Save the user's wallet address

      redirect_to user_signed_in? ? '/register' : '/shelters'
    else
      render json: { success: false, error: 'XUMM sign-in failed. Please try again.' }
    end
  end
end
