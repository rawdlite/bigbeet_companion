class Artist < ApplicationRecord
  has_many :artist_secondary_genres
  belongs_to :genre
  has_many :secondary_genres, through: :artist_secondary_genres 
  has_many :albums
end
