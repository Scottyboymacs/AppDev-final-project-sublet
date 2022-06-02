class CreateFirmLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :firm_locations do |t|
      t.integer :firm_id
      t.integer :region_id
      t.integer :state_id
      t.integer :city_id

      t.timestamps
    end
  end
end
