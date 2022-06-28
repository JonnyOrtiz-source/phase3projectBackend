class CreateNewShoeTable < ActiveRecord::Migration[6.1]
  def change
    create_table :shoes do |t|
      t.string "shoe_name"
      t.string "sex"
      t.string "brand"
      t.timestamps
    end

  end
end
