class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # get "/" do
  #   { message: "Good luck with your project!" }.to_json
  # end

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
      # serialize(shoe)
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
    end
  
  private 


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
