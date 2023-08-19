Rails.application.routes.draw do
  # XUMM sign-in routes

  get '/create_login', to: 'xumm#create_login'
  post '/xumm_callback', to: 'xumm#callback'

   # Route to serve static assets
   get '/bundle.js', to: 'static#serve_index_js'
end
