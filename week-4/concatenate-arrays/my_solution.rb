# Concatenate Two Arrays

# I worked on this challenge by myself.


# Your Solution Below

def array_concat(array_1, array_2)
  
  array_2.each { |value|

  	array_1 << value

  }

  array_1

end

p array_concat([12,3,3],["monkey",5,6,7,"apple"])

