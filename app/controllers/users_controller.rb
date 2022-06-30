class UsersController < ApplicationController
  # User routes: ALL
  get "/users" do
    users = User.all 
    serialize(users)
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
    serialize(user)
  end

  private
  
  def serialize(objects)
    objects.to_json(include: :user_shoes)
  end

#   def serialize(objects)
#     objects.to_json(
#         include: {  
#           shoes: {
#             only: [:shoe_name, :brand, :sex, :image_url]
#         }
#      }
#     )
#   end
end
