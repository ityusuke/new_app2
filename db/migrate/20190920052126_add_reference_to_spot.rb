class AddReferenceToSpot < ActiveRecord::Migration[5.2]
  def change
    add_reference :spots, :tour, index: true
  end
end
