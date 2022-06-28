class RemoveImageUrlFromUserShoesTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :user_shoes, :image_url
  end
end
