# == Schema Information
#
# Table name: states
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  region_id  :integer
#
class State < ApplicationRecord

  belongs_to(:region)

  has_many(:cities)
  has_many(:neighborhoods)
  has_many(:buildings)
  has_many(:listings)

end
