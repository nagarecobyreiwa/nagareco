class User < ApplicationRecord
  acts_as_paranoid
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :addresses, dependent: :destroy
  has_many :carts
  has_many :orders
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
  validates :first_name
  validates :last_name
  validates :first_name_kana
  validates :last_name_kana
  validates :postcode,numericality: true
  validates :address
  validates :phone_number,numericality: true
  end
  validates :email, uniqueness_without_deleted: true, allow_blank: true, if: :email_changed?
end
