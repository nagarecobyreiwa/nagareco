class Genre < ApplicationRecord
  acts_as_paranoid
  has_many :products

  validates :name, presence: true
end
