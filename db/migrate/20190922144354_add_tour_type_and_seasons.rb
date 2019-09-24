class AddTourTypeAndSeasons < ActiveRecord::Migration[5.2]
  def change
    add_column :tours,:tour_type,:string,:null => true
    add_column :tours,:season,:string,:null => true
  end
end
