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

  has_many(:listings)
  has_many(:users)

  belongs_to(:neighborhood)
  belongs_to(:city)
  belongs_to(:state)
  belongs_to(:region)

end
