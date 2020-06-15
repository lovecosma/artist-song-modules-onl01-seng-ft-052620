require 'pry'

class Song
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable::InstanceMethods
  @@songs = []
  attr_accessor :name
  attr_reader :artist

  def self.all
  @@songs
  end

  def artist=(artist)
  @artist = artist
  end

  end
