# == Schema Information
#
# Table name: orders
#
#  id            :bigint           not null, primary key
#  uid           :string
#  customer_id   :bigint           not null
#  restaurant_id :bigint           not null
#  total_amount  :float
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Order < ApplicationRecord
	include PgSearch::Model
  # Include shared utils.
  include SharedUtils::Generate

  before_save :generate_random_number_uid
  
  belongs_to :customer
  belongs_to :restaurant
end
