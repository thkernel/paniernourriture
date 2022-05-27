# == Schema Information
#
# Table name: restaurants
#
#  id          :bigint           not null, primary key
#  uid         :string
#  slug        :string
#  name        :string
#  address     :string
#  country     :string
#  city        :string
#  phone       :string
#  email       :string
#  street      :string
#  po_box      :string
#  zip_code    :string
#  status      :string
#  description :text
#  account_id  :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require "test_helper"

class RestaurantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
