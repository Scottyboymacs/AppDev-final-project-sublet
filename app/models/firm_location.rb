# == Schema Information
#
# Table name: firm_locations
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  city_id    :integer
#  firm_id    :integer
#  region_id  :integer
#  state_id   :integer
#
class FirmLocation < ApplicationRecord
end
