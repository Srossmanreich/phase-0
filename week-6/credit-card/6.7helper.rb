# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Credit card number
# Output: True if the credit card is valid
# Steps: Create the credit card class
# => Make sure the card length is 16 digits
# Create two arrays (for every other number)
# Define a method that doubles every other digit of the cc #
# => Apply to array of the every other ones meant to be affected
# Define method to sum all numbers
# => If numbers are double digit, break apart
# => Sum all single digit numbers together
# Define method to check to see if multiple of ten
# => If sum is a multiple of ten then the number is valid (return true)


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard

	attr_writer :ccnumber

	def initialize(ccnumber)
		@odd = []
		@even = []
		@ccarray = ccnumber.to_s.split(//)
		raise ArgumentError.new("Please input a correct cc number (16 digits)") if @ccarray.size != 16 
	end

	def check_card
		@ccarray.each.with_index {|value, index| (index.even? ? @even : @odd) << value}
		@even.map!{|v|v.to_i*2}
		@odd.map!{|v|v.to_i}
		@even = @even.join("").to_s.split(//).map!{|v|v.to_i}
		@sum = @even.reduce(:+) + @odd.reduce(:+)
		@sum%10==0 ? true : false
	end

end

card = CreditCard.new(4408041234567901)
p card.check_card

class CreditCard

	attr_writer :ccnumber

	def initialize(ccnumber)
		@odd = []
		@even = []
		@ccarray = ccnumber.to_s.chars
		raise ArgumentError.new("Please input a correct cc number (16 digits)") if @ccarray.size != 16 
	end

	def check_card
		@ccarray.each.with_index {|value, index| (index.even? ? @even : @odd) << value.to_i}
		@even = @even.map {|v| v * 2}.join("").chars.map &:to_i
		(@sum = @even.reduce(:+) + @odd.reduce(:+)) % 10 == 0
	end

end

card = CreditCard.new(4408041234567901)
p card.check_card



# Refactored Solution





# Reflection

=begin
1) What was the most difficult part of this challenge for you 
and your pair?

Making sure we were using methods destructively when we wanted to
and had the correct elements in our method versus in the initialize

2) What new methods did you find to help you when you 
refactored?

I didn't learn new methods but realized instead that some existing
methods could help me out (like join, chars, reduce, etc.)

3) What concepts or learnings were you able to solidify in 
this challenge?

What needs to go in the initialize when creating a new class.
Some shorthand for if statements and reduce.

=end



