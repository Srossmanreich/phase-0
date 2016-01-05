# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

=begin

# What is the input?

An Array of numbers or strings

# What is the output? (i.e. What should the code return?)

An array of the most frequent values

# What are the steps needed to solve the problem?

First we'll take the array and group by values
Then look through the hash created to find the values that appear the most
We'll only select these values and push them to a new array

=end

# 1. Initial Solution

def mode(array)
	
	hash = array.group_by{|i|i}
	
	new_array = hash.sort_by {|key,value| 
		-value.size
	}

	i = new_array[0][1].size

	mode_array = []

	new_array.each {|value|
		if value[1].length == i
			mode_array << value
		end
	}

	final = mode_array.map{|value| value[1]}
	final.flatten.uniq.sort

end

print mode([1,2,2,3,4,4])


# 3. Refactored Solution

def mode(array)

	hash = array.group_by
	
	i = hash.max_by{|key,value| value.size}[1].size
	
	hash.find_all{|key,value| value.size == i}.flatten.uniq
	
end


# 4. Reflection

=begin

1) Which data structure did you and your pair decide to implement and why?

A hash because I remembered reading about group_by in our readings for
this pairing AND because y'all said to look at the Hash documentation

2) Were you more successful breaking this problem down into implementable 
pseudocode than the last with a pair? 

This problem was actually a lot more difficult to break down in pseudocode.
I had to go back and rethink what I was doing a few times.

3) What issues/successes did you run into when translating your pseudocode 
to code?

My code wasn't working! And the easy steps I described were a lot harder to
make sense of in code than expected!

4) What methods did you use to iterate through the content? Did you 
find any good ones when you were refactoring? Were they difficult to 
implement?

I used group_by, sort_by, map, flatten, and uniq (which were all first 
for me!). The new ones I used in refactoring were max_by and find_all
(which were less challenging to use after all my trial and error with
the original code.)

=end
