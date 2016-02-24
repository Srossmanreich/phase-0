# Review and Refactor: Pad an Array

# I worked on this challenge [by myself, with: ].


# My original solution:

def pad!(array, min_size, value = nil) #destructive
  if array.size >= min_size
  	return array
  else
  	i = min_size - array.size
  	i.times { array << value }
  	array
  end
end



def pad(array, min_size, value = nil) #non-destructive
  new = array.clone
  if min_size <= array.size
    new
  else 
    (min_size - array.size).times {new << value}
    new
  end
end

# My refactored solution:

array = [1,1,1]

def pad!(array,min,value=nil)
	array.fill(value, array.size..min)
end

p pad!(array,6,7)

# 5. Reflection
