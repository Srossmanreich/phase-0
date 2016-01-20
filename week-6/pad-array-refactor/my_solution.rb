# Review and Refactor: Pad an Array

# I worked on this challenge [by myself, with: ].



# First Person's solution I liked
# What I learned from this solution
# Copy solution here:





# Second Person's solution I liked
#    What I learned from this solution
# Copy solution here:




# My original solution:



# My refactored solution:

array = [1,1,1]

def pad!(array,min,value=nil)
	array.fill(value, array.size..min)
end

p pad!(array,6,7)

# 5. Reflection
