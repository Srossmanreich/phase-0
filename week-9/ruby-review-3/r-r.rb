# OO Basics: Student


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode



# Initial Solution

students = {}

class Student
  attr_accessor :scores, :first_name

  def initialize(first_name,scores)   #Use named arguments!
  	@first_name = first_name
  	@scores = scores
  	return {first_name: scores}
  end

  def average
  	@average = @scores.reduce(:+) / @scores.length
  end

  def letter_grade
  	return "A" if @average >= 90
  	return "B" if @average >= 80
  	return "C" if @average >= 70
  	return "D" if @average >= 60
  	return "F" if @average < 60
  end

end

Alex = Student.new("Alex",[100,100,100,0,100])
students[0] = Alex
students[0].average
students[0].letter_grade

def linear_search(hash,name)
	counter = 0
	until hash[counter] = name || counter > hash.length
		counter += 1
	end
	if counter > hash.length 
		return -1
	else
		counter
	end
end

linear_search(students,"Alex")
linear_search(students, "Random")

# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Additional Tests 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Additional Tests 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1





# Reflection