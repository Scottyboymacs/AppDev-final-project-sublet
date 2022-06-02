class CreateBuildings < ActiveRecord::Migration[6.0]
  def change
    create_table :buildings do |t|
      t.string :name
      t.integer :region_id
      t.integer :state_id
      t.integer :city_id
      t.integer :neighbourhood_id

      t.timestamps
    end
  end
end
