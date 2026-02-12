class Room < ApplicationRecord
  has_many :items
  has_many :viewers

  validates :title, presence: true
  validates :token, presence: true, uniqueness: true
end
