module Memorable
  module ClassMethods
    def reset_all
      self.class.clear
    end

    def count
      self.class.count
    end
  end

  module InstanceMethods
    def initialize
      self.class.all << self
    end
  end
end
