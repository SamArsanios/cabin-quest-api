class Favourite < ApplicationRecord
  belongs_to :user
  belongs_to :cabin
  # has_many :cabins
end
