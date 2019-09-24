class SpotIdToTour < ActiveRecord::Migration[5.2]
  def change
    add_column :tours,:spot_id,:bigint
  end
end
