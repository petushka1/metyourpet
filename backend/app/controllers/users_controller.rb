class UsersController < ApplicationController
    skip_before_action :authenticate_user!, only: [:register]
    
    def register
      # Check if the user is already registered by wallet address
      user = User.find_by(address: session[:wallet_address])
      if user
        redirect_to '/shelters'
        return
      end
  
      @user = User.new(address: session[:wallet_address])
    end
  
    def create
      @user = User.new(user_params)
      @user.address = session[:wallet_address]
  
      if @user.save
        redirect_to '/shelters'
      else
        render :register
      end
    end
  
    private
  
    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation, :role)
    end
  end
  