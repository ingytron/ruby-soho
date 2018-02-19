# Still trying to get this working

class Word < String
  def palindrome?(string)
    if string == string.reverse
    end
  end
end


s = Word.new("kayak")
puts s.palindrome?(s)
puts s == s.reverse
puts s
puts s.length # This bit works
