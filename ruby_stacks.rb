# LIFO array / stack
stack = []; stack << "one"; stack.push ("two")
puts stack.pop # => returns two

# FIFO array / stack
queue = []; queue.push "one"; queue.push "two"
puts queue.shift # => returns one

a = [5,3,2,4,7,11,25,16,6].sort!.reverse!
p a
p a.sample(2) # => returns two random elements

a[6] = 33
a.reverse!.sort!
p a
