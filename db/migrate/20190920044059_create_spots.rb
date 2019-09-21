class CreateSpots < ActiveRecord::Migration[5.2]
  def change
    create_table :spots do |t|
      t.string :spotname
      t.text :spotcontent

      t.timestamps
    end
  end
end
