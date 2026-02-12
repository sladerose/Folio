class Link < ApplicationRecord
  has_one :item, as: :itemable, dependent: :destroy
  
  validates :url, presence: true
  validates :title, presence: true
end
