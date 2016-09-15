class SecondaryGenre < ApplicationRecord
  has_many :artists_secondary_genres
  has_many :artist, through: :artists_secondary_genres
end
