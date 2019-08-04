class AddImage < ActiveRecord::Migration[5.0]
  def change
    add_column :users,:userimage,:string
  end
end
