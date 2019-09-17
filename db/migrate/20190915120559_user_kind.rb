class UserKind < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :test_user, :boolean, default: false, null: false
  end
end
