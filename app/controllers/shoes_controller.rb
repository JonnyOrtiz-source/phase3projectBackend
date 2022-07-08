class ShoesController < ApplicationController
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
      end

private

    def shoe_params
        allowed_params = %w(shoe_name sex brand image_url)
        params.select {|param,value| allowed_params.include?(param)}
    end

    def serialize(obj)
        obj.to_json
        # (
        #   methods: :formatted_time,
        #   include: {
        #     users: {
        #       only: [:first_name, :last_name]
        #     }
        #   }
        # )
    end

end