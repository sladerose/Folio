class Item < ApplicationRecord
  belongs_to :room
  belongs_to :itemable, polymorphic: true
  acts_as_list scope: :room
end
