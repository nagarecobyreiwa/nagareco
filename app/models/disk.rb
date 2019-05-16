class Disk < ApplicationRecord
  belongs_to :product
  has_many :songs
  accepts_nested_attributes_for :songs
end
