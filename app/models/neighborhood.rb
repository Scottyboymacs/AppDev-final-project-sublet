# == Schema Information
#
# Table name: neighborhoods
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  city_id    :integer
#  region_id  :integer
#  state_id   :integer
#
class Neighborhood < ApplicationRecord

  has_many(:listings)

end
