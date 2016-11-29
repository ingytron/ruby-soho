editor_props = { "font" => "Helvetica", "size" => 11, "colour" => "pink" }

puts editor_props.length
puts editor_props["font"]

editor_props["background"] = "Black"
editor_props.each_pair do | key, value |
  puts "Key: #{key} Value: #{value}"
end

# Create a new hash that has 0 as the default value
word_frequency = Hash.new(0)

sentence = "Chicka chicka boom boom"
# Increment the value for each word found
sentence.split.each do | word |
  word_frequency[word.downcase] += 1
end

p word_frequency
