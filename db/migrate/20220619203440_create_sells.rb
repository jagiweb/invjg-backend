class CreateSells < ActiveRecord::Migration[6.1]
  def change
    create_table :sells do |t|
      t.date :date
      t.integer :item_id
      t.integer :sold_price_dollar
      t.integer :sold_price_bs
      t.string :platform
      t.string :profit
      t.string :payment_type
      t.integer :commission_platform
      t.integer :seller_id

      t.timestamps
    end
  end
end
