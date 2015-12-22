# Longest String

# I worked on this challenge myself.

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
  
  if list_of_words.empty?
  	nil

  else

  array = []

  list_of_words.each {|value|
  	array << value.length
  }
  return list_of_words[array.index(array.max)]
  end

end

puts longest_string(["monkey","tree","bananas"])

