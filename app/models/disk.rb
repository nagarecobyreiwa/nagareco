class Disk < ApplicationRecord
  acts_as_paranoid
  belongs_to :product, inverse_of: :disks

  has_many :songs, inverse_of: :disk
  accepts_nested_attributes_for :songs, allow_destroy: true

end
