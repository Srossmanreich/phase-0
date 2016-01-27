# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: ].


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs

=begin
It is defining a function assert that raises a fail
unless the function yields.

In the code below, the assert matching bettysue's name
returns nil because there was no error, but when bettysue
is matched with billybob there is and an error is raised.
=end

# 3. Copy your selected challenge here

# Calculate a letter grade!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

def get_grade(array)
  
  sum = 0
  array.each{|x|sum+=x}
  grade = sum/array.size

  return "A" if grade > 89
  return "B" if grade > 79
  return "C" if grade > 69
  return "D" if grade > 59
  "F"

end


# 4. Convert your driver test code from that challenge into Assert Statements

def assert
  raise "Assertion failed!" unless yield
end

answer = get_grade([100,90,44,84])
assert { answer == "A" }
assert { answer == "B" }
assert { answer == "C" }
assert { answer == "D" }
assert { answer == "F" }

# 5. Reflection