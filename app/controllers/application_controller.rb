class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/users" do
    users = User.all.order(:created_at)
    users.to_json
  end

end
