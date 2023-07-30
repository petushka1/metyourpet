Rails.application.routes.draw do
  # XUMM sign-in routes
  get '/create_login', to: 'xumm#create_login'
  post '/xumm_callback', to: 'xumm#callback'

  # Route to serve the JavaScript file
  get '/src/index.js', to: 'static#serve_index_js', as: :src_file

  # Your other routes...
end
