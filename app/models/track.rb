class Track < ApplicationRecord
  belongs_to :album
  require 'ruby-mpd'

  def play
      mpd = MPD.new 'localhost', 6600
      mpd.connect
      song = MPD::Song.new(mpd, {file: "file://%s" % path,
          title: name,
          album: album.name})
      mpd.add song
      if !mpd.playing?
          mpd.play
      end
      mpd.disconnect
  end

end
