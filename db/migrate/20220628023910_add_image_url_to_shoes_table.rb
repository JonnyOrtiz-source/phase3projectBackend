class AddImageUrlToShoesTable < ActiveRecord::Migration[6.1]
  def change
    add_column :shoes, :image_url, :string
  end
end
