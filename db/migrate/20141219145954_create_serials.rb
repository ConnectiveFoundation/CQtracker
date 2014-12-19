class CreateSerials < ActiveRecord::Migration
  def change
    create_table :serials do |t|
      t.integer :serial_number

      t.timestamps
    end

    create_table :locations do |t|
    	t.belongs_to :serials
    	t.datetime :location_date
    	t.timestamps
    end
  end
end
