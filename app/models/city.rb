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

class City < ApplicationRecord
	include PgSearch::Model
  # Include shared utils.
  include SharedUtils::Generate

  before_save :generate_random_number_uid
  
  belongs_to :user
end
