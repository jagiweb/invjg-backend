class CreateSupervisors < ActiveRecord::Migration[6.1]
  def change
    create_table :supervisors do |t|
      t.string :fullname
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :commission
      t.references :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end
