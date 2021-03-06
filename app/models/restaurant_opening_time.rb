# == Schema Information
#
# Table name: restaurant_opening_times
#
#  id            :bigint           not null, primary key
#  uid           :string
#  restaurant_id :bigint           not null
#  day           :string
#  start_time    :time
#  end_time      :time
#  status        :string
#  account_id    :bigint           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class RestaurantOpeningTime < ApplicationRecord

	include PgSearch::Model
  # Include shared utils.
  include SharedUtils::Generate

  before_save :generate_random_number_uid
  belongs_to :restaurant
  # Change default params ID to uid
  def to_param
    uid
  end
  
end
