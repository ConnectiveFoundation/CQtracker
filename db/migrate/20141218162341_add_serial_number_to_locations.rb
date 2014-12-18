class AddSerialNumberToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :serial_number, :integer
  end
end
