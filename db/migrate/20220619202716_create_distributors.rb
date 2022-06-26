class CreateDistributors < ActiveRecord::Migration[6.1]
  def change
    create_table :distributors do |t|
      t.string :name
      t.string :address
      t.string :website
      t.string :pdf
      t.string :phone
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
