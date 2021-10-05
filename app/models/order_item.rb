# == Schema Information
#
# Table name: order_items
#
#  id         :bigint           not null, primary key
#  uid        :string
#  order_id   :bigint           not null
#  food_id    :bigint           not null
#  quantity   :integer
#  price      :float
#  amount     :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class OrderItem < ApplicationRecord
	include PgSearch::Model
  # Include shared utils.
  include SharedUtils::Generate

  before_save :generate_random_number_uid
  
  belongs_to :order
  belongs_to :food
end
