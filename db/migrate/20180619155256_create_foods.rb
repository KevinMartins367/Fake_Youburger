class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :title
      t.text :description
      t.integer :quantity
      t.decimal :price, precision: 5, scale: 2
      t.references :category
      t.string :thumbnail_key

      t.timestamps
    end
  end
end
