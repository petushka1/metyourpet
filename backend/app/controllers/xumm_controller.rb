# app/controllers/xumm_controller.rb
require 'json'
require 'rest-client'

class XummController < ApplicationController
  # Method to initiate XUMM sign-in
  def create_login
    # Sample payload data for XUMM sign-in
    payload_data = {
      txjson: {
        TransactionType: 'SignIn',
        // Add other custom fields specific to your application as needed
      },
      options: {
        submit: true,
        return_url: xumm_callback_url
      }
    }.to_json

    # Make a POST request to the XUMM API to create the payload for XUMM sign-in
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
      # Redirect the user to the XUMM wallet app with the payload ID for sign-in
      redirect_to payload['next']['always']
    else
      render plain: 'Error: Unable to create XUMM sign-in payload'
    end
  end

  # XUMM callback after sign-in
  def callback
    # Process the XUMM callback data received after sign-in
    # This callback will contain the required data to verify the sign-in status
    # Implement the logic to verify the sign-in status and create the shelter record in the database
    # For example, you can check the status field in the callback data to verify the sign-in
    # status and proceed accordingly.

    if params[:status] == 'signed'
      # User successfully signed in using XUMM wallet
      # Create the shelter record in the database here
      shelter_name = params[:shelter_name]
      shelter_description = params[:shelter_description]
      shelter_location = params[:shelter_location]
      shelter_address = params[:shelter_address]

      # Save the shelter details in the database
      @shelter = Shelter.create(
        name: shelter_name,
        description: shelter_description,
        location: shelter_location,
        address: shelter_address
      )

      # Render a success page or redirect to the home page
      render plain: "Shelter registration successful. Your shelter ID: #{shelter.id}"
    else
      # Handle unsuccessful sign-in or other error scenarios
      render plain: "Error: XUMM sign-in failed. Please try again."
    end
  end
end
