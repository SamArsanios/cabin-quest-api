class Cabin < ApplicationRecord
  belongs_to :user
  before_save :slugify
  has_many :favourites, dependent: :destroy

  validates :name, uniqueness: true, presence: true, length: { in: 3..100 }
  validates_presence_of :country, :address, :region, :location
  # validates :status, inclusion: { in: %w(available processing unavailable),
  #                                 message: "%{value} is not a valid status" }

  scope :ordered_by_most_recent, -> { order(created_at: :desc) }

  def slugify
    self.slug = name.parameterize
  end
end
