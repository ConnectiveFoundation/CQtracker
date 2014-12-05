class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.integer :serial
      t.string :name
      t.integer :zip

      t.timestamps
    end
  end
end
