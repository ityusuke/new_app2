class Rocords < ActiveRecord::Migration[5.0]
  def change
    drop_table :tours
  end
end
