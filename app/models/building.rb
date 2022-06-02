# == Schema Information
#
# Table name: buildings
#
#  id               :integer          not null, primary key
#  name             :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  city_id          :integer
#  neighbourhood_id :integer
#  region_id        :integer
#  state_id         :integer
#
class Building < ApplicationRecord
end
