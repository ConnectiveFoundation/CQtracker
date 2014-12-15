class AddLatitudeAndLongitudeToModel < ActiveRecord::Migration
  def change
    add_column :models, :lat, :float
    add_column :models, :lng, :float
  end
end
