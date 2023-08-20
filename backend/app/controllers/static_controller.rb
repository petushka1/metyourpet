class StaticController < ApplicationController
  def serve_js
    send_file Rails.root.join('frontend', 'dist', 'bundle.js'), type: 'application/javascript', disposition: 'inline'
  end
end
