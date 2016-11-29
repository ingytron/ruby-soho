family_tree = { oldest: "Ringo", older: "George", younger: "Paul"}
family_tree[:youngest] = "John"
p family_tree

puts

# JSON like format for hashes
def adjust_colours(props = {foreground: "red", background: "white"})
  puts "Foreground: #{props[:foreground]}" if props[:foreground]
  puts "Background: #{props[:background]}" if props[:background]
end
adjust_colours


#These are all valid ways to pass params
adjust_colours({:foreground => "green"}) # Using optional parens, passing in hash
adjust_colours background: "yellow" # Passing in key / value
adjust_colours :background => "magenta" # Older way of doing the same as above, using symbol and hash rocket
puts


# Block and hash confusion
# Declare a hash
a_hash = { :one => "one" }

# Output it
puts a_hash

# If you try to do this all in one step
# puts { :one => "one" }
# You get a syntax error because Ruby thinks {} is a Block
# Use parens to get around thinks
puts ({ :one => "one"})

# or omit the {}
puts one: "one"
puts
