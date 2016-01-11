# Build a simple guessing game


# I worked on this challenge [by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: answer
# Output: a hint regarding how close the answer / guess was to the actual solution and (when solved is called) either true or false
# Steps: 
=begin 
1) Define the class GuessingGame and initialize it with the input 'answer'
2) Define a guess method that takes a number
	If the guess is less than the answer, yield the symbol :low
	If the guess is equal to the answer, yield the symbol :correct
	If the guess is greater than the answer, yield the symbol :high
3) Define a solved? method (no parameters)
	If last guess = answer then yield true, if not false
=end


# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @last_guess = nil
  end
  def guess(number)
  	@last_guess = number
  	if number > @answer
  		:high
  	elsif number < @answer
  		:low
  	else
  		:correct
  	end
  end
  def solved?
  	if @last_guess == @answer
  		true
  	else
  		false
  	end
  end
end

game = GuessingGame.new(10)
p game.guess(9)	
p game.guess(11)
p game.solved?	

# Make sure you define the other required methods, too

# see above!

# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end
  def guess(number)
  	@last_guess = number
  	return :high if number > @answer
  	return :low if number < @answer
  	else :correct
  end
  def solved?
  	return true if @last_guess == @answer
  	else false
  end
end

# Reflection

=begin
1) How do instance variables and methods represent the 
characteristics and behaviors (actions) of a real-world object?

Each instance of a class is just one version of that class.
I like to compare it to dogs. You may have a dog 'class' and be
able to call lots of animals dogs accurately, but some might be
poodles, some might be retrievers, some might be terriers, etc.
Each of these is an instance of the dog class and may use the
same 'methods' but likely in a different way. 

2) When should you use instance variables? What do they do for you?

You should use instance variables when your methods within a
class require information you may have collected from other
variables elsewhere in the class. Using instance variables
helps you link methods together and saves time so you don't
have to redefine variables or ask for parameters you've already
defined or received before from other class methods.

3) Explain how to use flow control. Did you have any trouble 
using it in this challenge? If so, what did you struggle with?
Why do you think this code requires you to return symbols? 
What are the benefits of using symbols?

I didn't have trouble with flow control until I refactored. I had
forgotten that returns aren't implicit when you flow on one line.
I actually am not sure why this code requires us to return
symbols (versus just strings we could print out). I'd actually be
really interested to understand why and now feel like I didn't
learn everything I should have. Symbols are unique and irreplaceable
which can be more appropriate for the context than strings. I really
see the benefit of symbols for hashes and am sure we are about to
jump to that.

=end
