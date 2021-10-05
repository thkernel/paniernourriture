# == Schema Information
#
# Table name: order_statuses
#
#  id          :bigint           not null, primary key
#  uid         :string
#  name        :string
#  status      :string
#  description :text
#  account_id  :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require "test_helper"

class OrderStatusTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
