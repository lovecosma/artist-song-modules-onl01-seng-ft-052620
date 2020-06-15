require 'pry'

class Artist
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable::InstanceMethods
  include Findable::InstanceMethods
  @@artists = []
  attr_accessor :name
  attr_reader :songs

  def initialize
    super
      @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end
end
