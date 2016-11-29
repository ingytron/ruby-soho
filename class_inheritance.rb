class MathFunctions
  def self.double(var) # Using self
    times_called; var * 2
  end
  class << self # Using << self
    def times_called
      @@times_called ||= 0; @@times_called += 1
    end
  end
end
def MathFunctions.triple(var) # Outside of class
  times_called; var * 3
end

# No instance created
puts MathFunctions.double 5
puts MathFunctions.triple(3)
puts MathFunctions.times_called
