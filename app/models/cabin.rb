class Cabin < ApplicationRecord
  belongs_to :user
  has_many :favourites, dependent: :destroy

  validates :name, uniqueness: true, presence: true, length: { in: 3..100 }
  validates_presence_of :country, :address, :region, :location

  scope :ordered_by_most_recent, -> { order(created_at: :desc) }
end
