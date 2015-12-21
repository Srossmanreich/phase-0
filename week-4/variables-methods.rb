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




