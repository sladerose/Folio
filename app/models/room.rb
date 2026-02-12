class Room < ApplicationRecord
  has_many :items, dependent: :destroy
  has_many :viewers, dependent: :destroy

  validates :title, presence: true
  validates :token, uniqueness: true, allow_nil: true

  before_create :generate_token

  private

  def generate_token
    self.token ||= loop do
      random_token = SecureRandom.urlsafe_base64(8)
      break random_token unless Room.exists?(token: random_token)
    end
  end
end
