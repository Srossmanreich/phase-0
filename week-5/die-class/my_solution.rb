# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: number of sides and class methods (+ initialize)
# Output: an initialized / working class, a method "sides" that 
# => returns # of sides, and a roll function that chooses a random num
# => between 1 and sides
# Steps: First initialize the existing die class to accepts the sides
# => variable
# Next create the sides method that lists the number of sides of the
# => dice
# Then create the roll method to generate a random number b/w 1 and sides
# Finally make sure an error is raised if fewer than 1 sides are inputed


# 1. Initial Solution

class Die
  
  attr_accessor :sides

  def initialize(sides)
    unless sides >= 1
    	raise ArgumentError.new("Only numbers > 0 should be input")
    end
    @sides = sides
  end

  def roll
    rand(1..@sides)
  end
end



# 3. Refactored Solution

class Die
  
  attr_accessor :sides

  def initialize(sides)
    unless sides >= 1
    	raise ArgumentError.new("Only numbers > 0 should be input")
    end
    @sides = sides
  end

  def roll
    rand(1..@sides)
  end
  
end


# 4. Reflection

=begin
	
1) What is an ArgumentError and why would you use one?

An argument error is a class you can initialize and raise when you want
to tell a user what went wrong with their input, etc.

What new Ruby methods did you implement? What challenges and successes 
did you have in implementing them?

To use ArgumentError, I had to first learn about that class and then learn
about raise. I also used 'unless' to help figure out when my argumenterror
instance was necessary. In general with the whole class, I used initialize,
attr_accessor, and rand. These are all methods I have had practice with
before and so didn't have too much trouble (I only had to good how to
spell the method for attribute accessor)

What is a Ruby class?

A ruby class is an overarching set of principles, methods, descriptoins,
etc. that apply for a group of objects (which are instances of the class)

Why would you use a Ruby class?

You would use a Ruby class when you want to create a lot of objects that
have similar qualities and need similar methods (e.g., Fixnum or String).
We have been using a lot of ruby classes without overtly recognizing this
such as the two I listed above.

What is the difference between a local variable and an instance variable?

A local variable is a variable that is created and applied locally to
wherever it has been defined (e.g., in a new general method not linked
to class). An instance variable is a variable defined and used for an
instance of a class and can only be used for that instance, within the
instance.

Where can an instance variable be used?

An instance variable can only be used within the instance that has been
initialized.


=end