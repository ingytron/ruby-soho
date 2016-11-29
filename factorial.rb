n = ARGV[0].to_i
# n = ARGV

def factorial(n)
  n == 0 ? 1 : n * factorial(n - 1)
  # puts "#{n}"
end

# puts factorial(5)
puts factorial(n)
