# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  body       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  listing_id :integer
#  photo_id   :integer
#  poster_id  :integer
#
class Comment < ApplicationRecord
end
