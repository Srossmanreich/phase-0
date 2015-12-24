# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge Sanderfer.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Array
# Output: Sum (single number)
# Steps to solve the problem.
# Loop over each item in the array and add it together



# 1. total initial solution

def total(array)

	sum = 0

	array.each{ |item|
		sum = sum + item
	}

	return sum

end


# 3. total refactored solution

def total(array)
	array.reduce(:+)
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: Array of strings
# Output: A sentence
# Steps to solve the problem.
# Loop over each element in the array to form a sentence

# 5. sentence_maker initial solution

def sentence_maker(array)

	sentence = ""

	array[0].capitalize!
	
	array[-1] << "."

	array.each { |item| 
		sentence = sentence + "#{item} "
	}

	sentence = sentence.chomp(" ")

	return sentence

end

puts sentence_maker(["all","my","socks","are","dirty"])

# 6. sentence_maker refactored solution

def sentence_maker(array)
	"#{array.join(" ")}.".capitalize
end







