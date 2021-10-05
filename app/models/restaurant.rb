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
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Restaurant < ApplicationRecord
	include PgSearch::Model
  # Include shared utils.
  include SharedUtils::Generate

  before_save :generate_random_number_uid
  
end
