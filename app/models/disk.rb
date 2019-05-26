class Disk < ApplicationRecord
  acts_as_paranoid
  belongs_to :product

  has_many :songs
  accepts_nested_attributes_for :songs

  validates :name, presence: true
end
