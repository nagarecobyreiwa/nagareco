class Song < ApplicationRecord
  acts_as_paranoid
  belongs_to :disk

  validates :name, presence: true
end
