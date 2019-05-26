class Address < ApplicationRecord
  belongs_to :user

  with_options presence: true do
  validates :first_name
  validates :last_name
  validates :first_name_kana
  validates :last_name_kana
  validates :postcode,numericality: true
  validates :address
  validates :phone_number,numericality: true
  end
end
