class CreateInventories < ActiveRecord::Migration[6.1]
  def change
    create_table :inventories do |t|
      t.date :date
      t.integer :item_id
      t.integer :quantity
      t.integer :unit_cost
      t.references :city, null: false, foreign_key: true
      t.integer :store_id

      t.timestamps
    end
  end
end
