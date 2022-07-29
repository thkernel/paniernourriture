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

class Food < ApplicationRecord
	include PgSearch::Model
  # Include shared utils.
  include SharedUtils::Generate

  before_save :generate_random_number_uid, :set_status
  
  belongs_to :food_category

  has_one_attached :thumbnail
  # Change default params ID to uid
  def to_param
    uid
  end


  def set_status
  	unless self.status.present?
  		self.status = "Actif"
  	end
  end
  
end
