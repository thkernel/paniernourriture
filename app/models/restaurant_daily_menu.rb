# == Schema Information
#
# Table name: restaurant_daily_menus
#
#  id            :bigint           not null, primary key
#  uid           :string
#  day           :string
#  food_id       :bigint           not null
#  restaurant_id :bigint           not null
#  status        :string
#  account_id    :bigint           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class RestaurantDailyMenu < ApplicationRecord
  

  include PgSearch::Model
  # Include shared utils.
  include SharedUtils::Generate

  before_save :generate_random_number_uid
 belongs_to :food
  belongs_to :restaurant
  belongs_to :account
  # Change default params ID to uid
  def to_param
    uid
  end
end
