module Maybe
  class Just
    attr_accessor :value

    private :value=

    def initialize(value)
      self.value = value
    end

    def >=(&block)
      self.class.new(block.call(self.value))
    end

    def to_s
      "Just(#{value.inspect})"
    end

    alias_method :inspect, :to_s
  end

  class Nothing
    def >=(&block)
      self
    end

    def to_s
      'Nothing'
    end

    alias_method :inspect, :to_s
  end

  module Conversions
    def self.Just(value)
      Maybe::Just.new(value).freeze
    end

    Nothing = Maybe::Nothing.new
  end
end
