class CreatePhysicalTherapists < ActiveRecord::Migration[6.1]
  def change
    create_table :physical_therapists do |t|

      t.timestamps
    end
  end
end
