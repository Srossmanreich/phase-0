# I worked on this challenge [by myself, with: ].


# Your Solution Below

=begin
def valid_triangle?(a, b, c)
  if (a==0) || (b==0) || (c==0)
  	false
  elsif (a**2 + c**2) == b**2
  	true
  elsif (b**2 + a**2) == c**2
  	true
  elsif (b**2 + c**2) == a**2
  	true
  elsif (a==b) && (b==c) && (a==c)
  	true
  else
  	false
  end
end
=end

def valid_triangle?(a, b, c)
  if (a==0) || (b==0) || (c==0)
  	false
  elsif a < 0 || b < 0 || c < 0
  	false
  elsif (a==b) && (b==c) && (a==c)
  	true
  elsif a+b > c && b+c > a && a+c > b
  	true
   elsif (a**2 + c**2) == b**2
  	true
  elsif (b**2 + a**2) == c**2
  	true
  elsif (b**2 + c**2) == a**2
  	true
  else
  	false
  end
end