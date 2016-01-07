# Calculate the Median!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution

def median(array)
	array = array.sort
	if array.size % 2 != 0
		array[((array.size/2))]
	else
		(array[(array.size/2)-1] + array[(array.size/2)]) / 2.0
	end
end

array = [1,2,4,10]

p median(array)


# 3. Refactored Solution



# 4. Reflection

