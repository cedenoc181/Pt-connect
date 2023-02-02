class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username 
      t.string :password_digest
      t.string :email
      t.string :first_name 
      t.string :last_name
      t.string :state 
      t.string :city
      t.string :address
      t.string :phone_number
      t.string :DOB
      t.string :insurer 
      t.timestamps
    end
  end
end
