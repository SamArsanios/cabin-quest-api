class User < ApplicationRecord
  has_secure_password
  has_many :favourites, dependent: :destroy
  has_many :cabins, dependent: :destroy

  validates :username, uniqueness: true, presence: true, length: { in: 3..100 }
  validates :firstname, presence: true, length: { in: 2...100 }
  validates :lastname, presence: true, length: { in: 2...100 }
  validates :email, presence: true, uniqueness: true, email: true

  scope :ordered_by_most_recent, -> { order(created_at: :desc) }

  # def user_favs(user, cabins)
  #   favs = []
  #   cabins.each do |cabin|
  #     user.favourites.each do |fav|
  #       favs.push(cabin) if cabin.id == fav.cabin_id
  #     end
  #   end
  #   favs
  # end
end
