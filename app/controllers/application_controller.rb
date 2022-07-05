class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/users" do
    users = User.all.order(:created_at)
    users.to_json
  end

  post "/users" do
    user = User.create(firstname: params[:firstname], surname: params[:surname], email: params[:email], registered: params[:registered])
    post.to_json
  end

  patch "/users/:id" do
    user = User.find(params[:id])
    user.update(firstname: params[:firstname]) 
    post.to_json
  end

  delete "/users/:id" do
    user = User.find(params[:id])
    post.destroy
    post.to_json
  end

end
