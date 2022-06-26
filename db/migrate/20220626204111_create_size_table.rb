class CreateSizeTable < ActiveRecord::Migration[6.1]
  def change
    create_table :sizes do |t|
      t.string "size_name"
      t.string "size_description"
    end
  end
end
