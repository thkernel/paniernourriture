# == Schema Information
#
# Table name: foods
#
#  id          :bigint           not null, primary key
#  uid         :string
#  slug        :string
#  name        :string
#  status      :string
#  description :text
#  account_id  :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Food < ApplicationRecord
	include PgSearch::Model
  # Include shared utils.
  include SharedUtils::Generate

  before_save :generate_random_number_uid
  
  # Change default params ID to uid
  def to_param
    uid
  end
  
end
