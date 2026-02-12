class Document < ApplicationRecord
  has_one :item, as: :itemable, dependent: :destroy
  has_one_attached :file
  
  validates :title, presence: true
end
