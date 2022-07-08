class UsersController < ApplicationController
  get "/users" do
    users = User.all 
    serialize(users)
    # serialize(User.includes(:shoes)) // does nothing special in Postman
  end

  get "/users/:id" do 
    user = User.find(params[:id])
    serialize(user)
  end

  post "/users" do 
    serialize(User.create(user_params))
  end

  patch "/users/:id" do
    user = User.find(params[:id])
    user.update(user_params)
    serialize(user)
  end

  delete "/users/:id" do 
    user = User.find(params[:id])
    user.destroy
  end

  private

  def user_params
    allowed_params = %w(username first_name last_name)
    params.select {|param,value| allowed_params.include?(param)}
  end
  
  def serialize(obj)
    obj.to_json(
      include: {  
        shoes: {
          only: [:shoe_name, :brand, :sex, :image_url, :id],
          include: { user_shoes: {
            only: [:shoe_type, :purchase_date, :color, :size, :UPC, :id]
          }}
        }
      }
    )
  end
end
