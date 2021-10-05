# == Schema Information
#
# Table name: food_restaurants
#
#  id               :bigint           not null, primary key
#  uid              :string
#  food_id          :bigint           not null
#  restaurant_id    :bigint           not null
#  min_cooking_time :string
#  max_cooking_time :string
#  price            :float
#  status           :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class FoodRestaurant < ApplicationRecord
	include PgSearch::Model
  # Include shared utils.
  include SharedUtils::Generate

  before_save :generate_random_number_uid
  
  belongs_to :food
  belongs_to :restaurant
end
