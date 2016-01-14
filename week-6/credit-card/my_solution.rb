# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: Heather ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Credit card number
# Output: True or False
# Steps:
#  convert the credit card nunber in to a string
#  confirm that the string has exactly 16 characters and throw an error if not
#  split the string into individual digits and put them into an array
#  iterate over the array and double every second element
#  split the string into individual digits and put them into an array
#  add all the individual numbers in the array together
#  if the result is evenly divisible by 10, return "true"
#     otherwise return "false"
#
#


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard

  def initialize(card_number)
    @card_number = card_number
    @number_string = @card_number.to_s.chars.map!{|v|v.to_i}
    raise ArgumentError, "wrong number of digits" if @number_string.length != 16
  end
  
  def check_card
    doubled_array = @number_string.each_index{|index| index.even? ? @number_string[index]*=2 : @number_string[index]}.join("").chars.map!{|v|v.to_i}.reduce(:+)
    doubled_array % 10 == 0 ? true : false
    
  end
  
end

card = CreditCard.new(4408041234567901)
p card.check_card

# Refactored Solution

class CreditCard

  def initialize(card_number)
    @card_number = card_number
    @number_string = @card_number.to_s.chars.map!{|v|v.to_i}
    raise ArgumentError, "wrong number of digits" if @number_string.length != 16
  end
  
  def check_card
    doubled_array = @number_string.each_index{|index| index.even? ? @number_string[index]*=2 : @number_string[index]}
    answer = doubled_array.join("").chars.map!{|v|v.to_i}.reduce(:+)
    answer % 10 == 0
    
  end
  
end

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
