# Pad an Array

# I worked on this challenge [with: Guy ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? an array, a min size, optional padding value
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
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


# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
  array.fill(value,array.size...min_size)
end

def pad(array, min_size, value = nil) #destructive
  array.clone.fill(value,array.size...min_size)
end



# 4. Reflection


=begin

1) Were you successful in breaking the problem down into small steps?

Yes! And it helped a lot more than I thought.

2)Once you had written your pseudocode, were you able to 
easily translate it into code? What difficulties and 
successes did you have?

The pseudocode really helped me think through this problem. Translating
my pseudocode to the actual code was easier than expected and very
helpful. I had some difficulty passing one element of the rspec (I 
returned the array even in the destructive one when the min was less
than the size of the array), but figured it out with the rspec detail.

3) Was your initial solution successful at passing the tests? 
If so, why do you think that is? If not, what were the errors you 
encountered and what did you do to resolve them?

Most of the tests -- yes! I think I passed because of the planning
process with the pseudocode.

4) When you refactored, did you find any existing methods in Ruby 
to clean up your code?

Yes! (see above)

5) How readable is your solution? Did you and your pair choose 
descriptive variable names?

I think so.

6) What is the difference between destructive and non-destructive 
methods in your own words?

Destructive methods actually change the object that method is 
applied to. Non-destruvtive methods use the applied object to create
and entirely new object (which can be saved under a variable name
or not)

=end
