class CreateTours < ActiveRecord::Migration[5.0]
  def change
    create_table :tours do |t|
      t.string :tourname
      t.text :tourcontent
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :tours, [:user_id, :created_at]
  end
end
