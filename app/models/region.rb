# == Schema Information
#
# Table name: regions
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Region < ApplicationRecord

  has_many(:listings)
  has_many(:states)
  has_many(:cities)
  has_many(:neighborhoods)
  has_many(:buildings)

end
