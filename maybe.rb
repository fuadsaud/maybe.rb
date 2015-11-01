class Maybe
  private_class_method :new

  def self.Just(value)
    new(value)
  end

  attr_accessor :value

  private :value=

  def >=(&block)
    if nothing?
      self
    else
      just(block.call(self.value))
    end
  end

  def to_s
    if nothing?
      'Nothing'
    else
      "Just(#{value.inspect})"
    end
  end

  alias_method :inspect, :to_s

  private

  def initialize(value)
    self.value = value.freeze
  end

  def nothing?
    self.value.nil?
  end

  def just(value)
    self.class.Just(value)
  end

  Nothing = new(nil)
end
