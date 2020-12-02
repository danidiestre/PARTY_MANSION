class AddCoordinatesToMansions < ActiveRecord::Migration[6.0]
  def change
    add_column :mansions, :latitude, :float
    add_column :mansions, :longitude, :float
  end
end
