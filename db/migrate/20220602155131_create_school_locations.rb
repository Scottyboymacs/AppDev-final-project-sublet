class CreateSchoolLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :school_locations do |t|
      t.integer :school_id
      t.integer :region_id
      t.integer :state_id
      t.integer :city_id

      t.timestamps
    end
  end
end
