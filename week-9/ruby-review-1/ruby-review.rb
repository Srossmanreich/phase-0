# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode

=begin
First initialize the beginning of the fibonacci sequence
in the function. You'll keep calling the function so you
can run through the entire sequence until the number
you are testing equals your current number in the sequence
OR your current number is higher.
=end

# Initial Solution

def is_fibonacci?(num, loc = 1, start = 0)
	 if num == loc
	 	true
	 elsif num < loc
	 	false
	 else
	 	is_fibonacci?(num,loc + start, loc)
	 end
end

p is_fibonacci?(1);
p is_fibonacci?(3);
p is_fibonacci?(555);



# Refactored Solution

def is_fibonacci?(num, loc = 1, start = 0)  
  return true if loc == num
  return false if loc > num
  is_fibonacci?(num, loc + start, loc)
end


# Reflection

=begin
What concepts did you review in this challenge?
RECURSION!
What is still confusing to you about Ruby?
Nothing at the moment. I do worry about my class / inheritance
	skills
What are you going to study to get more prepared for Phase 1?
I am going to keep running through the ruby exercises and
maybe look at Rails!
=end

