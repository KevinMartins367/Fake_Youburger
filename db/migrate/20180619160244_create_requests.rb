class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.text :description
      t.decimal :total, precision: 6, scale: 2

      t.timestamps
    end
  end
end
