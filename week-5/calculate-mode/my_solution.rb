# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: Emily]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? array
# What is the output? (i.e. What should the code return?) array of all the items that appear the most
# What are the steps needed to solve the problem?

=begin
Define the method mode
Create an empty hash
Create a loop that iterates through the values in the array
	set up an if statement
		if the value already exists as a key in the hash
			add 1 to that value but do nothing with the key itself
		else
			push a new key (the value) and value(1) pair into the hash
End the loop
Find the max value
Create new array
Loop over the new hash
	if value = max value push key into new array
End
Return array
=end

# 1. Initial Solution

def mode(array)
	hash = {}
	array.each {|value|
		if hash.has_key?(value)
			hash[value] += 1
		else
			hash[value] = 1
		end }
	max_value = hash.max_by{|key,value|value}[1]
	new_array = []
	hash.each {|key,value|
		if value == max_value
			new_array << key
		end }
	new_array
end

array = [3]
p mode(array)

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
