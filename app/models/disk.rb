class Disk < ApplicationRecord
  belongs_to :product_id
  has_many :songs
  accepts_nested_attributes_for :songs
end
