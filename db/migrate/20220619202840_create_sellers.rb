class CreateSellers < ActiveRecord::Migration[6.1]
  def change
    create_table :sellers do |t|
      t.string :fullname
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :commission
      t.references :store, null: false, foreign_key: true

      t.timestamps
    end
  end
end
