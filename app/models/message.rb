# == Schema Information
#
# Table name: messages
#
#  id          :integer          not null, primary key
#  copy        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  listing_id  :integer
#  receiver_id :integer
#  sender_id   :integer
#
class Message < ApplicationRecord
  
 belongs_to(:sender, { :class_name => "User", :foreign_key => "sender_id" })

end
