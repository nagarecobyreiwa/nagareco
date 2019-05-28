class Product < ApplicationRecord
  acts_as_paranoid
  belongs_to :artist
  belongs_to :genre
  belongs_to :label
  has_many :disks
  has_many :carts
  has_many :order_products
  accepts_nested_attributes_for :disks, allow_destroy: true

  attachment :image

  validates :name, presence: true
  validates :price, numericality: true
  validates :stock, numericality: true
end
