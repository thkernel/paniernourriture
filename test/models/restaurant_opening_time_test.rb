# == Schema Information
#
# Table name: restaurant_opening_times
#
#  id            :bigint           not null, primary key
#  uid           :string
#  restaurant_id :bigint           not null
#  day           :string
#  start_time    :time
#  end_time      :time
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require "test_helper"

class RestaurantOpeningTimeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
