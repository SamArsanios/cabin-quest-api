class Cabin < ApplicationRecord
  belongs_to :user
  has_many :favourites, dependent: :destroy

  validates :name, uniqueness: true, presence: true, length: { in: 3..100 }
  validates_presence_of :country, :address, :region, :location

  scope :ordered_by_most_recent, -> { order(created_at: :desc) }
  scope :user_favourites, ->(user) { Cabin.joins(:favourites).where(user_id: user.id).ordered_by_most_recent }
end
