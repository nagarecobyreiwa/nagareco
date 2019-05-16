class Product < ApplicationRecord
  belongs_to :artist
  belongs_to :genre
  belongs_to :label

  has_many :disks
  accepts_nested_attributes_for :disks
end
