# Shortest String

# I worked on this challenge myself.

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below

def shortest_string(list_of_words)
  
  array = []

  list_of_words.each {|value|
  	array << value.length
  }

  if array.empty?
  	nil
  else
  return list_of_words[array.index(array.min)]
  end

end

puts shortest_string(["monkey","tree","bananas"])

