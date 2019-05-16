class Product < ApplicationRecord
  belongs_to :artist_id
  belongs_to :genre_id
  belongs_to :label_id
  has_many :disks
end
