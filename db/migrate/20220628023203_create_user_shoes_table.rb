class CreateUserShoesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :user_shoes do |t|
      t.string :shoe_type
      t.string :purchase_date
      t.string :color
      t.string :size
      t.string :UPC
      t.string :image_url
      t.references :user, foreign_key: true, null: false
      t.references :shoe, foreign_key: true, null: false
      t.timestamps
    end 

  end
end
