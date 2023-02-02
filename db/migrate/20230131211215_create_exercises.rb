class CreateExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :exercises do |t|
      t.string :name 
      t.string :target
      t.string :bodyPart
      t.string :equipment
      t.string :gifUrl
      t.timestamps
    end
  end
end
