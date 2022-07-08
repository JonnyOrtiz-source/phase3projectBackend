class UserShoesController < ApplicationController

    get "/user_shoes" do
      serialize(UserShoe.all)
    end
    post "/user_shoes" do
      serialize(UserShoe.create(user_shoe_params))
    end
    patch "/user_shoes/:id" do
        user_shoe = UserShoe.find(params[:id])
        user_shoe.update(user_shoe_params)
      serialize(user_shoe)
    end
    delete "/user_shoes/:id" do
        user_shoe = UserShoe.find(params[:id])
        user_shoe.destroy
      # status 204
      serialize(user_shoe)
    end

    private

    def user_shoe_params
      allowed_params = %w(user_id shoe_id shoe_type purchase_date color size UPC)
      params.select {|param,value| allowed_params.include?(param)}
    end

    def serialize(obj)
      obj.to_json
      # (methods: :formatted_time)
    end
  end