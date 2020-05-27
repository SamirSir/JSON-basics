class CreateFurnitures < ActiveRecord::Migration[6.0]
  def change
    create_table :furnitures do |t|
      t.string :name
      t.text :descriptioin
      t.integer :price

      t.timestamps
    end
  end
end
