class Label < ApplicationRecord
  acts_as_paranoid
  has_many :products
end
