class AddTourimage < ActiveRecord::Migration[5.0]
  def change
    add_column :tours,:tour_image1,:string
    add_column :tours,:tour_image2,:string
    add_column :tours,:tour_image3,:string
  end
end
