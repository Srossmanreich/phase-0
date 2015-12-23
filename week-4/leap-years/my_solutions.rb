# Leap Years

# I worked on this challenge Coline.


# Your Solution Below
def leap_year?(x)
	if (x % 4 == 0) && (x % 100 == 0) && ((x % 400) != 0)
		false
	elsif ((x - 2016) % 4 == 0)
		true
	elsif ((x-2016) % 100 == 0)
		true
	else
		false
	end
end