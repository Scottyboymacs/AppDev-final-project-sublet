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
end
