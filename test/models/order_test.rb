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

require "test_helper"

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
