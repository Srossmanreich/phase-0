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
		@ccarray = ccnumber.to_s.split(//)
		raise ArgumentError.new("Please input a correct cc number (16 digits)") if @ccarray.size != 16 
	end

	@odd = []
	@even = []

	def even_odd
		@ccarray.each.with_index { |value, index| 
			index % 2 == 0 ? @even << value : @odd << value }
	end
	
	@odd


end

test = CreditCard.new(1234567891234567)
test.even_odd
p test

# Refactored Solution





# Reflection