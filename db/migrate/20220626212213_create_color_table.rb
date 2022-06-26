class CreateColorTable < ActiveRecord::Migration[6.1]
  def change
    create_table :colors do |t|
      t.string "color_name"
    end
  end
end
