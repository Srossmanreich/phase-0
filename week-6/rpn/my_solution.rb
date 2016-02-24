# Implement a Reverse Polish Notation Calculator


# I worked on this challenge [by myself, with: ].

# Pseudocode

# Input: An evaluate method should take two numbers and an operation
# Output: The answer to the problem
# Steps:

# 1) Create an RPN Calculator class
# 2) Define a method in the class that takes two numbers and an operation as a string
# 3) This string should be broken into an array of size 3
# 4) Create an if statement for the third item
# 5) If item is '+' add every item before it in the array and so on for * and -
# 6) If string has more than 3 items in it, return 0

# Initial Solution

class RPNCalculator

	def operation(operation, num1, num2)
		if operation == "+"
			num1 + num2
		elsif operation == "-"
			num2 - num1
		elsif operation == "*"
			num1 * num2
		end
	end

	def is_operation?(x)
		if x == "+" || x == "*" || x == "-"
			true
		else
			false
		end
	end

	def evaluate(string)

		items = string.split(" ")

		numbers = []

		items.each do |item|
			if is_operation?(item) == false
				numbers << item.to_i
			else
				if numbers.length < 2
					raise ArgumentError.new("Input error!")
				end
				numbers << operation(item,numbers.pop,numbers.pop)
			end
		end

		numbers[0]

	end

end

calc = RPNCalculator.new
calc.evaluate("1 2 +")


# 4. Refactored Solution

class RPNCalculator

	def operation(operation, num1, num2)
		case operation
		when "+"
			num1 + num2
		when "-"
			num2 - num1
		when "*"
			num1 * num2
		else
			raise ArgumentError.new("Input error!")
		end
	end
	
	def is_operation?(x)
		x == "+" || x == "*" || x == "-"
	end

	def evaluate(string)
		items = string.split(" ")
		numbers = []
		items.each do |item|
			if is_operation?(item) == false
				numbers << item.to_i
			else
				if numbers.length < 2
					raise ArgumentError.new("Input error!")
				end
				numbers << operation(item,numbers.pop,numbers.pop)
			end
		end
		numbers[0]
	end
end

calc = RPNCalculator.new
calc.evaluate("1 2 +")


# Reflection
#No Reflection Questions
