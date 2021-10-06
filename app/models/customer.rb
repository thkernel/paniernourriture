# == Schema Information
#
# Table name: customers
#
#  id          :bigint           not null, primary key
#  uid         :string
#  first_name  :string
#  last_name   :string
#  civility    :string
#  address     :string
#  country     :string
#  city        :string
#  phone       :string
#  street      :string
#  po_box      :string
#  zip_code    :string
#  description :text
#  status      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Customer < ApplicationRecord
	include PgSearch::Model
  # Include shared utils.
  include SharedUtils::Generate

  before_save :generate_random_number_uid
  
  # Change default params ID to uid
  def to_param
    uid
  end
end
