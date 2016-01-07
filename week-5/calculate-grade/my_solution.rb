# Calculate a letter grade!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution

def get_grade(array)
	
	sum = 0
	array.each{|x|sum+=x}
	grade = sum/array.size

	return "A" if grade > 89
	return "B" if grade > 79
	return "C" if grade > 69
	return "D" if grade > 59
	return "F" if grade < 60

end

# 3. Refactored Solution

def get_grade(array)
	
	sum = 0
	array.each{|x|sum+=x}
	grade = sum/array.size

	return "A" if grade > 89
	return "B" if grade > 79
	return "C" if grade > 69
	return "D" if grade > 59
	"F"

end


# 4. Reflection
