class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :physical_therapist_id
      t.string :review_header
      t.text :users_review
      t.string :photo
      t.string :star_rating 
      t.timestamps
    end
  end
end
