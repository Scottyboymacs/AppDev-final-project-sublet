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

ActiveRecord::Schema.define(version: 2022_06_02_155214) do

  create_table "bookmarks", force: :cascade do |t|
    t.integer "user_id"
    t.integer "listing_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "buildings", force: :cascade do |t|
    t.string "name"
    t.integer "region_id"
    t.integer "state_id"
    t.integer "city_id"
    t.integer "neighbourhood_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.integer "region_id"
    t.integer "state_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer "poster_id"
    t.integer "photo_id"
    t.integer "listing_id"
    t.string "body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "firm_locations", force: :cascade do |t|
    t.integer "firm_id"
    t.integer "region_id"
    t.integer "state_id"
    t.integer "city_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "firms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

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

  create_table "messages", force: :cascade do |t|
    t.integer "sender_id"
    t.integer "receiver_id"
    t.integer "listing_id"
    t.string "copy"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "neighborhoods", force: :cascade do |t|
    t.string "name"
    t.integer "region_id"
    t.integer "state_id"
    t.integer "city_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "photos", force: :cascade do |t|
    t.string "image"
    t.string "caption"
    t.integer "listing_id"
    t.integer "owner_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "school_locations", force: :cascade do |t|
    t.integer "school_id"
    t.integer "region_id"
    t.integer "state_id"
    t.integer "city_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "schools", force: :cascade do |t|
    t.string "name"
    t.integer "region_id"
    t.integer "state_id"
    t.integer "city_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.integer "region_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.integer "phone_num"
    t.integer "firm_id"
    t.integer "school_id"
    t.integer "city_id"
    t.integer "neighborhood_id"
    t.integer "building_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
