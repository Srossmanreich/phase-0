#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
	attr_accessor :name
	def initialize(name)
		@name = name
	end
end


class Greetings
	def initialize
		@name = NameData.new("Student")
	end
	def hello
		puts "Hello #{@name.name}! How wonderful to see you today."
	end
end

test = Greetings.new.hello

# Reflection
=begin

1.1) What are these methods doing?
In the first release the methods are mainly printing out
information of an instance defined in the class as well as some
fancing text to make the formatting appear fancier.
1.2) How are they modifying or returning the value of instance 
variables?
They are simply calling the methods on the created class and
adding new parameters where desired.

2.1) What changed between the last release and this release?
In this release an attr_reader was added.

2.2) What was replaced?
The what is my age code.

2.3) Is this code simpler than the last?
Yes

3.1) What changed between the last release and this release?
In this release an attr_writer was added.

3.2) What was replaced?
The change my age code.

3.3) Is this code simpler than the last?
Yes

6.1) What is a reader method?
This is a method that lets you read what is stored in a 
specific variable.

6.2) What is a writer method?
This is a method that lets you write new data to store in
a specific variable.

6.3) What do the attr methods do for you?
These let you set certain variables to writeable and/or readable

6.4) Should you always use an accessor to cover your bases? Why 
or why not?
You should not always use accessor because there are likely variables
whose values you (or anyone else playing with your code) wouldn't want
changed (especially by mistake)

6.5) What is confusing to you about these methods?
Nothing at the moment!

=end



