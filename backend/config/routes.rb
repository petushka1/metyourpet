Rails.application.routes.draw do

  get '/create_login', to: 'xumm#create_login'
  post '/xumm_callback', to: 'xumm#callback'
  get '/shelters', to: 'shelters#index'
  get '/register', to: 'users#register'

end
