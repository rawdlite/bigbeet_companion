class ArtistSecondaryGenre < ApplicationRecord
  belongs_to :artist
  belongs_to :secondary_genre
end
