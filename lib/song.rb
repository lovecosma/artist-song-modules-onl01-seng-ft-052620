require 'pry'

class Song
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods

  attr_accessor :name
  attr_reader :artist

def self.all
  Song.all
end
  def artist=(artist)
    @artist = artist
  end

end
