class CreateIdealLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :ideal_locations do |t|
      t.string :first
      t.string :second
      t.string :third
      t.string :fourth
      t.string :fifth

      t.timestamps
    end
  end
end
