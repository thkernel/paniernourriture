# == Schema Information
#
# Table name: cities
#
#  id         :bigint           not null, primary key
#  uid        :string
#  slug       :string
#  name       :string
#  status     :string
#  account_id :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require "test_helper"

class CityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
