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

require "test_helper"

class OrderItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
