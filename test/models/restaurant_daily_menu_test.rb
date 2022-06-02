# == Schema Information
#
# Table name: restaurant_daily_menus
#
#  id            :bigint           not null, primary key
#  uid           :string
#  day           :string
#  food_id       :bigint           not null
#  restaurant_id :bigint           not null
#  status        :string
#  account_id    :bigint           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require "test_helper"

class RestaurantDailyMenuTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
