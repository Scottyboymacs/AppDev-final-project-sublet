# == Schema Information
#
# Table name: listings
#
#  id                :integer          not null, primary key
#  address           :string
#  ammenities        :string
#  close_date        :date
#  dates_flex        :integer
#  end_flex_left     :integer
#  end_flex_right    :integer
#  floor             :integer
#  furnished         :boolean
#  gender_pref       :integer
#  map_url           :string
#  notes             :string
#  num_baths         :integer
#  num_baths_offered :integer
#  num_beds          :integer
#  num_beds_offered  :integer
#  num_rooms         :integer
#  num_rooms_offered :integer
#  num_watching      :integer
#  open_date         :date
#  pets              :boolean
#  rent              :float
#  satellite_url     :string
#  smoking           :boolean
#  start_flex_left   :integer
#  start_flex_right  :integer
#  status            :boolean
#  sublease_category :integer
#  visibility        :integer
#  website_url       :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  building_id       :integer
#  city_id           :integer
#  neighborhood_id   :integer
#  owner_id          :integer
#  region_id         :integer
#  state_id          :integer
#
class Listing < ApplicationRecord
end
