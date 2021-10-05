# == Schema Information
#
# Table name: members
#
#  id            :bigint           not null, primary key
#  uid           :string
#  first_name    :string
#  last_name     :string
#  civility      :string
#  role_id       :bigint           not null
#  restaurant_id :bigint           not null
#  status        :string
#  description   :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require "test_helper"

class MemberTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
