squares = (1..5).map { |i| i**2 }
puts squares

abc = %w[a, b, c]
abc.map { | char | char.upcase! }
puts abc

abc.map(&:downcase!)
puts abc
