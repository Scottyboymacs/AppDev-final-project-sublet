class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.integer :owner_id
      t.date :open_date
      t.date :close_date
      t.boolean :status
      t.string :address
      t.integer :num_beds
      t.integer :num_baths
      t.integer :num_rooms
      t.integer :num_beds_offered
      t.integer :num_baths_offered
      t.integer :num_rooms_offered
      t.integer :region_id
      t.integer :state_id
      t.integer :city_id
      t.integer :neighborhood_id
      t.integer :building_id
      t.boolean :furnished
      t.string :ammenities
      t.boolean :pets
      t.boolean :smoking
      t.integer :sublease_category
      t.integer :gender_pref
      t.integer :floor
      t.float :rent
      t.integer :dates_flex
      t.integer :start_flex_left
      t.integer :start_flex_right
      t.integer :end_flex_left
      t.integer :end_flex_right
      t.string :notes
      t.string :map_url
      t.string :website_url
      t.string :satellite_url
      t.integer :num_watching
      t.integer :visibility

      t.timestamps
    end
  end
end
