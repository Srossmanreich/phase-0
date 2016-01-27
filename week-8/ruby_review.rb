#Introduction to Inheritance - RUBY Review 8.6

# Introduction to Inheritance

# I worked on this challenge [by myself, with: ].


# Pseudocode




# Initial Solution

class GlobalCohort

	attr_accessor :name, :p0_start_date, :immersive_start_date, :graduation_date
  
  def initialize(name,p0_start_date,immersive_start_date,graduation_date)
  	@name = name
  	@p0_start_date = p0_start_date
  	@immersive_start_date = @immersive_start_date
  	@graduation_date = graduation_date
  	@student_list = {"San Francisco" => [], "Chicago" => [], "New York" => []}
  end

  def students
  	@student_list.each{|key,value| 
		p value[0][0].nil? ? "" : value[0][0]
	}
  end

  def add_student(stu_name,email,location)
  	@stu_name = stu_name
  	@email = email
  	@location = location
  	@student_list.each{|key,value|
  		if key == @location
  			value.push([@stu_name,@email])
  		end
  	}
  end

  def email_list
  	@student_list.each{|key,value| 
		p value[0][1].nil? ? "" : value[0][1]
	}
  end

  def num_of_students
  	p sum = @student_list["San Francisco"].length + @student_list["Chicago"].length + @student_list["New York"].length
  end

end

test = GlobalCohort.new("Fiddler Crabs", "12/01/2015", "2/9/2016", "4/14/2016")
test.add_student("Sydney","srossmanreich@gmail.com","San Francisco")
test.add_student("Chelsea","chelsea@gmail.com","Chicago")
test.add_student("Newton","newton@gmail.com","New York")
test.students
test.email_list
test.num_of_students


class LocalCohort < GlobalCohort

	attr_accessor :city, :name
  
  def initialize(name,p0_start_date,immersive_start_date,graduation_date,city)
  	@city = city
  	super(name)
  	super(p0_start_date)
  	super(immersive_start_date)
  	super(graduation_date)
  	@name = name
  	@p0_start_date = p0_start_date
  	@immersive_start_date = immersive_start_date
  	@graduation_date = graduation_date
  end

  def students
  	@student_list.each{|key,value| 
		p value[@city][0].nil? ? "" : value[@city][0]
	}
  end

end

test2 = LocalCohort.new("Fiddler Crabs", "12/01/2015", "2/9/2016", "4/14/2016", "San Francisco")


# Refactored Solution





# Reflection