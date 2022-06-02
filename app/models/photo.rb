# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  caption    :string
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  listing_id :integer
#  owner_id   :integer
#
class Photo < ApplicationRecord
end
