het_arr = ["one", 2, :three]
puts het_arr[1]

arr_words = %w{"What a great day it is today!"}
puts arr_words[-2]
puts "#{arr_words.first} - #{arr_words.last}"
puts arr_words[-2, 3]

p arr_words[2..5]
puts arr_words.join(',')


a = [1,3,4,7,8,10]
a.each { | num | print num }
puts

new_arr = a.select { |num| num > 4 }
p new_arr = a.select { | num | num < 10 }
             .reject { | num | num.even? }
p new_arr

new_arr = a.map {|x| x * 3}
p new_arr 
