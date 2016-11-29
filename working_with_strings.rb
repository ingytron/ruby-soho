my_name = " tim"
puts my_name.lstrip.capitalize
p my_name
p my_name.lstrip!
my_name[0] = 'K'
puts my_name

def make_space
  # I realize now I could have just put 'puts' lol
  puts "\n"
end

make_space

cur_weather = %Q{It's a hot day outside
Grab your umbrellas...}
puts cur_weather.strip

make_space

cur_weather.lines do |line|
  line.sub! 'hot', 'rainy'
  puts "#{line.strip}"
end
