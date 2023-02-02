class CreatePhysicalTherapists < ActiveRecord::Migration[6.1]
  def change
    create_table :physical_therapists do |t|
      t.string :email 
      t.string :password_digest
      t.string :first_name 
      t.string :last_name 
      t.string :profile_picture
      t.string :clinic_address 
      t.string :specialization 
      t.string :phone_number 
      t.string :title 
      t.string :studies
      t.string :insurances 
      t.boolean :home_visits 
      t.text :about_me
      t.float :rating
      t.timestamps
    end
  end
end
