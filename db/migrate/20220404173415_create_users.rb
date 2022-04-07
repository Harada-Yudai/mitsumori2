class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email,              null: false
      t.string :password_digest,    null: false
      t.string :last_name,          null: false
      t.string :first_name,         null: false
      t.string :company
      t.string :address
      t.string :phone_num,          null: false
      t.text   :info
      t.timestamps
    end
  end
end
