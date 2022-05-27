# == Schema Information
#
# Table name: foods
#
#  id               :bigint           not null, primary key
#  uid              :string
#  slug             :string
#  food_category_id :bigint
#  name             :string
#  status           :string
#  description      :text
#  account_id       :bigint           not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require "test_helper"

class FoodTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
