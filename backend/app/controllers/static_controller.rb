class StaticController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :serve_index_js
  
  def serve_index_js
    send_file Rails.root.join('..', 'frontend', 'src', 'index.js'), type: 'application/javascript', disposition: 'inline'
  end
end
