class AddCoordinatesToVenues < ActiveRecord::Migration[5.2]
  def change
    add_column :venues, :latitude, :float
    add_column :venues, :longitude, :float
  end
end
