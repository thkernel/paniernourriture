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

class OrderStatus < ApplicationRecord
	include PgSearch::Model
  # Include shared utils.
  include SharedUtils::Generate

  before_save :generate_random_number_uid

  
  belongs_to :account

  def to_param
    	"uid"
    end
end
