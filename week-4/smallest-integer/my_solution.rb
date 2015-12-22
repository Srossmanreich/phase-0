
# Smallest Integer

# I worked on this challenge by myself.

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

def smallest_integer(list_of_nums)
  if list_of_nums.empty?
  return nil
  else
  return list_of_nums.sort[0]
  end
end

puts smallest_integer([2,4,5,1])
puts smallest_integer([])

