# Factorial

# I worked on this challenge with Sanderfer.

=begin

Pseudocode
Multiply number by itself -1 until the number = 0

=end

# Your Solution Below


def factorial(number)
  
	if number <= 1
		return 1
	
	else
	  
	  x = number 
	  answer = 1
	  
	  until x == 0
	  	answer = answer*x
	  	x = x-1
	  end

	  return answer

	end

end

puts factorial(5)
puts factorial(3)

#Also:

def factorial(number)

	if number <= 1
		return 1
	else
	(1..number).reduce(:*)
	end
end

