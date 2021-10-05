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

require "test_helper"

class FoodRestaurantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
