class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/sizes" do
    sizes = Size.all 
    serialize(sizes)
  end

  get "/sizes/:id" do 
    size = Size.find(params[:id])
    serialize(size)
  end

  post "/sizes" do 
    serialize(Size.create(size_params))
  end

  patch "/sizes/:id" do
    size = Size.find(params[:id])
    size.update(size_params)
    serialize(size)
  end

  delete "/sizes/:id" do 
    size = Size.find(params[:id])
    size.destroy
    serialize(size)
  end

  private 

  def size_params
    allowed_params = %w(size_name size_description)
    params.select {|param,value| allowed_params.include?(param)}
  end

  def serialize(size)
    size.to_json
  end

end
