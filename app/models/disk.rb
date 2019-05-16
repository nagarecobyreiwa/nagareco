class Disk < ApplicationRecord
  belongs_to :product_id
  has_many :songs
end
