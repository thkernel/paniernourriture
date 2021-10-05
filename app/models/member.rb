# == Schema Information
#
# Table name: members
#
#  id            :bigint           not null, primary key
#  uid           :string
#  first_name    :string
#  last_name     :string
#  civility      :string
#  role_id       :bigint           not null
#  restaurant_id :bigint           not null
#  status        :string
#  description   :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Member < ApplicationRecord
	include PgSearch::Model
  # Include shared utils.
  include SharedUtils::Generate

  before_save :generate_random_number_uid
  
  belongs_to :role
  belongs_to :restaurant
end
