class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # get "/" do
  #   { message: "Good luck with your project!" }.to_json
  # end

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

  # Shoe routes: ALL
    get "/shoes" do
      shoes = Shoe.all 
      serialize(shoes)
    end
  
    get "/shoes/:id" do 
      shoe = Shoe.find(params[:id])
      serialize(shoe)
    end
  
    post "/shoes" do 
      serialize(Shoe.create(shoe_params))
    end
  
    patch "/shoes/:id" do
      shoe = Shoe.find(params[:id])
      shoe.update(shoe_params)
      serialize(shoe)
    end
  
    delete "/shoes/:id" do 
      shoe = Shoe.find(params[:id])
      shoe.destroy
      serialize(shoe)
    end

    # User_Shoes routes: POST, PATCH, DELETE
    post "/user_shoes" do
      serialize(UserShoes.create(user_shoes_params))
    end

    patch "/user_shoes/:id" do
      user_shoes = UserShoes.find(params[:id])
      user_shoes.update(user_shoes_params)
      serialize(user_shoes)
    end

    delete "/user_shoes/:id" do
      user_shoes = UserShoes.find(params[:id])
      user_shoes.destroy
      serialize(user_shoes)
    end
  
  private 

  def user_params
    allowed_params = %w(username first_name last_name)
    params.select {|param,value| allowed_params.include?(param)}
  end

  def shoe_params
    allowed_params = %w(shoe_name sex brand)
    params.select {|param,value| allowed_params.include?(param)}
  end

  def user_shoes_params
    allowed_params = %w(shoe_type purchase_date user_id shoe_id color size UPC image_url)
    params.select {|param,value| allowed_params.include?(param)}
  end

  def serialize(obj)
    obj.to_json
  end

end
