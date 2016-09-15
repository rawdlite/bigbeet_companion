class Album < ApplicationRecord
      belongs_to :album_group
      belongs_to :artist
      belongs_to :label
      belongs_to :genre
      has_many :tracks

      def play
          tracks.each do |track|
              track.play
          end
      end
end
