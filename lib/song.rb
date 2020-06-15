require 'pry'

class Song
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable::InstanceMethods
  include Findable::InstanceMethods

  attr_accessor :name
  attr_reader :artist

 def self.all
 self.class
 end
 def artist=(artist)
 @artist = artist
 end

end
