class StaticController < ApplicationController
  skip_before_action :verify_authenticity_token

  def serve_index_js
    send_file Rails.root.join('frontend', 'dist', 'bundle.js'), type: 'application/javascript', disposition: 'inline'
  end
end
