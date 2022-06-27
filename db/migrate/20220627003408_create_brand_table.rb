class CreateBrandTable < ActiveRecord::Migration[6.1]
  def change
    create_table :brands do |t|
      t.string "brand_name"
      t.string "brand_description"
    end
  end
end
