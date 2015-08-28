class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email,          limit: 50,                null: false
      t.string :password_hash,                            null: false
      t.string :first_name,     limit: 25,                null: false
      t.string :last_name,      limit: 25,                null: false
      t.string :phone_number,   limit: 11,                null: false
      t.string :gender,         limit: 6,                 null: false
      t.string :stinger_count,  limit: 5,   default: 0,   null: false
      t.string :password_salt,                            null: false

      t.timestamps
    end
  end
end
