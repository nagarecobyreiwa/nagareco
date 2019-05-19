class Product < ApplicationRecord
  acts_as_paranoid
  belongs_to :artist
  belongs_to :genre
  belongs_to :label
  has_many :disks
  accepts_nested_attributes_for :disks

  attachment :image
end
