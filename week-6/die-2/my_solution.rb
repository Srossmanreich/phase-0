# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: the sides of your die listed as strings or integers in an array
# Output: a new Die class with my chosen sides that has methods to show number of sides and randomly select a side ascribed to my die
# Steps: 
=begin
1) create a new die class that accepts an array of sides
2) define a method 'sides' within the class
	have this method count the number of sides the die has and return this number when called
3) define a roll method
	have this method first find a random number between 0 and one minus the size of the array with the sides listed
	then return the item in the array at this number
=end

# Initial Solution

class Die

  attr_accessor :array

  def initialize(array)
  	@array = array
  	if array.any?
  		array
  	else
  		raise ArgumentError.new("Please input an array of your dice's sides.")
  	end
  end

  def sides
  	array.length
  end

  def roll
  	array[rand(0..(sides-1))]
  end

end

letters = Die.new(["a","b","c"])
p letters.sides
p letters.roll

# Refactored Solution

class Die
  attr_accessor :array
  def initialize(array)
  	@array = array
  	raise ArgumentError.new("Please input an array of your dice's sides.") unless array.any? 
  end
  def sides
  	array.length
  end
  def roll
  	array[rand(0..(sides-1))]
  end
end

# Reflection

=begin 
1) What were the main differences between this die class 
	and the last one you created in terms of implementation? 
	Did you need to change much logic to get this to work?

This die class is a class --- in other words all we have to do
	is instantiate the class once and we'll have access to all
	of its unique set of methods. In terms of method logic though
	this class's methods were fairly similar to the standalone
	ones we created before.

2) What does this exercise teach you about making code that is 
	easily changeable or modifiable? 

It seems useful to create a class of methods for some code you
	think you will want to run a number of times (and in different
	forms --- aka -changed and or modified). Go through the effort
	of setting up a class at the beginning to do this appears to
	ultimately be worth it! (and very DRY ;))

3) What new methods did you learn when working on this challenge, 
	if any?

I had to look up attr_accessor (which I think was actually a
	nice to have and not necessary for this) as well as remind
	myself to define the local variable within the class using @
	I also didn't remember how to raise an argument and had to
	remind myself with a previous challenge.

4) What concepts about classes were you able to solidify in this 
challenge?

I now will remember how to initialize a class and use attr_accessor.
	I do believe there is a shorter hand way to combine these two
	in conjunction but could not remember what this shorthand was!

=end


