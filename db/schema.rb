# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_06_02_001347) do

  create_table "listings", force: :cascade do |t|
    t.integer "owner_id"
    t.date "open_date"
    t.date "close_date"
    t.boolean "status"
    t.string "address"
    t.integer "num_beds"
    t.integer "num_baths"
    t.integer "num_rooms"
    t.integer "num_beds_offered"
    t.integer "num_baths_offered"
    t.integer "num_rooms_offered"
    t.integer "region_id"
    t.integer "state_id"
    t.integer "city_id"
    t.integer "neighborhood_id"
    t.integer "building_id"
    t.boolean "furnished"
    t.string "ammenities"
    t.boolean "pets"
    t.boolean "smoking"
    t.integer "sublease_category"
    t.integer "gender_pref"
    t.integer "floor"
    t.float "rent"
    t.integer "dates_flex"
    t.integer "start_flex_left"
    t.integer "start_flex_right"
    t.integer "end_flex_left"
    t.integer "end_flex_right"
    t.string "notes"
    t.string "map_url"
    t.string "website_url"
    t.string "satellite_url"
    t.integer "num_watching"
    t.integer "visibility"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
