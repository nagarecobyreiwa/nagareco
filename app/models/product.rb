class Product < ApplicationRecord
  acts_as_paranoid
  belongs_to :artist
  belongs_to :genre
  belongs_to :label
  has_many :disks
  has_many :carts
  accepts_nested_attributes_for :disks

  attachment :image

  validates :name, presence: true
  validates :price, numericality: true
  validates :stock, numericality: true
end
