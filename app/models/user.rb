# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string
#  password_digest :string
#  phone_num       :integer
#  username        :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  building_id     :integer
#  city_id         :integer
#  firm_id         :integer
#  neighborhood_id :integer
#  school_id       :integer
#
class User < ApplicationRecord

  belongs_to(:school)
  belongs_to(:firm)

  has_many(:bookmarks)
  has_many(:messages)
  has_many(:photos, { :class_name => "Photo", :foreign_key => "owner_id" })
  has_many(:listings, { :class_name => "Listing", :foreign_key => "owner_id" })
  has_many(:received_messages, { :class_name => "Message", :foreign_key => "receiver_id" })
  has_many(:sent_messages, { :class_name => "Message", :foreign_key => "sender_id" })



end
