class Product < ApplicationRecord
  belongs_to :artist_id
  belongs_to :genre_id
  belongs_to :label_id
  has_many :disks
  accepts_nested_attributes_for :disks
end
