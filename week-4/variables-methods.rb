=begin
1) Full name greeting: Write a program that asks for a person's first name, 
then middle, then last. Finally, it should greet the person using their 
full name.
=end

puts "What is your first name?"

first = gets.chomp

puts "What is your middle name?"

middle = gets.chomp

puts "What is your last name?"

last = gets.chomp

puts "Nice to meet you " + first + " " + middle + " " + last

=begin
2) Bigger, better favorite number: Write a program that asks for a person's 
favorite number. Have your program add 1 to the number, and then suggest 
the result as a bigger and better number.
=end

puts "What is your favorite number?"

num = gets.chomp.to_i

puts "I think your favorite number should be #{num + 1} ... it is a much better number!"

=begin

+ How do you define a local variable?

	You set a name for the variable (whatever you'd like) equal to what value 
	you would like that variable to have. For example my_name = "Sydney"

+ How do you define a method?

	You define a method by first typing def, then naming the method (and 
	deciding if you'd like it to have parameters), adding the method's 
	operations on the next line, and ending the definition with an 'end' 
	tag

+ What is the difference between a local variable and a method?

	A local variable is equal to a single value you've ascribed to it, 
	while a method actually contains more complex operations that can 
	return more than one value among doing other things.

+ How do you run a ruby program from the command line?

	You can either test snippets of code directly in the command line 
	by typing 'irb' and then pressing enter OR you can run one of your 
	files by typing ruby 'path to the file / file name'

+ How do you run an RSpec file from the command line?

	You type rspec into the command line followed by the 
	path / filename of your rspec ruby file

+ What was confusing about this material? What made sense?
	
	The exercises themselves made sense (and was mostly review for me). 
	What was more difficult to grasp were the conepts illustrated in the 
	rspec docs. I know we were told not to worry about how these are made 
	today, but I have a hard time using tools I don't understand. I did
	try reading some of the rspec documentation provided and watching the
	DBC video on rspec, but without exercises forcing me to use what was
	illustrated, I don't think I did (or will) retain much.

Links to 4.3.1 / 2

Address: https://github.com/Srossmanreich/phase-0/blob/master/week-4/address/my_solution.rb
Math: https://github.com/Srossmanreich/phase-0/blob/master/week-4/math/my_solution.rb

=end


