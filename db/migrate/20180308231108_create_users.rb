class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.datetime :last_sign_in_at
      t.string :first_name
      t.string :last_name
      t.string :phone

      t.timestamps
    end
  end
end
