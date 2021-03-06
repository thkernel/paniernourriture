# == Schema Information
#
# Table name: accounts
#
#  id                     :bigint           not null, primary key
#  uid                    :string
#  login                  :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  accountable_type       :string
#  accountable_id         :bigint
#  role_id                :bigint           not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string
#  failed_attempts        :integer          default(0), not null
#  unlock_token           :string
#  locked_at              :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class Account < ApplicationRecord
  include PgSearch::Model
  # Include shared utils.
  include SharedUtils::Generate

  before_save :generate_random_number_uid


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


# Relationships
  belongs_to :accountable, polymorphic: true, optional: true

  belongs_to :role
  has_many :food_categories, dependent: :destroy
  has_many :foods, dependent: :destroy
  has_many :restaurants, dependent: :destroy
  has_many :food_restaurants, dependent: :destroy
  has_many :restaurant_opening_times, dependent: :destroy
  has_many :restaurant_daily_menus, dependent: :destroy
  
  # Change default params ID to uid
  def to_param
    uid
  end

  def superuser?
    if self.role.name == "Superuser"
      true 
    else
      false
    end
  end

  def user?
    if self.role.name == "user"
      true 
    else
      false
    end
  end

  def admin?
    if self.role.name == "administrateur"
      true 
    else
      false
    end
  end


end
