class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.timestamps null: false
      t.string :username, null: false
      t.string :email, null: false
      t.string :password, null: false
    end
    add_index :users, :email
  end
end
