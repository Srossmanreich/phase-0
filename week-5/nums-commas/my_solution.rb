# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? a number without commas
# What is the output? (i.e. What should the code return?) a number with commas
# What are the steps needed to solve the problem?

=begin

Make sure the number is an integer
Turn each digit in the number into an array
Create a loop starting with the last item in the array 
Move over three places and add a comma until you are at the first
	item in the array
Combine all the items in the updated array into a single number
Turn into a string
	
=end


# 1. Initial Solution

def separate_comma(num)
	num.to_s.reverse.chars.to_a.each_slice(3).to_a.map {|value|
		value.join("")
	}.join(",").reverse
end

# 2. Refactored Solution

#Wahoo! I actually think I did it in the most eloquent way without
# => using regular expressions! :D

def separate_comma(num)
	num.to_s.reverse.chars.to_a.each_slice(3).to_a.map {|value|
		value.join("")
	}.join(",").reverse
end

# 3. Reflection

=begin

1) What was your process for breaking the problem down? 
What different approaches did you consider?

Well so my pseudocode was a complete fail this time (you can see my
original plan above). Even though my final answer was short it took me
a pretty long time to get there! I kept trying to create a loop that
went over the indices in the array and it just wasn't working. I'd already
had the reverse step applied to num and after about an hour of complete
fail decided to take a break and start over. Trying to break things down
into even simpler steps really really helped. I actually wish I had
taken the time to re-do my pseudocode and spell out my new plan. I did
end up practicing more patience and testing out each step as I went in
my terminal which REALLY helped. I think I am more proud of this piece
of code than anything else I've written so far :D

2) Was your pseudocode effective in helping you build a successful initial 
solution?

See above ---- My pseudocode was awful! I really really like writing
pseudocode, but just utterly failed this time. I think taking a break
after struggling for a long time was good and, although I didn't re-write
out new pseudocode, thinking through a new and simpler strategy in my
head before retrying was SO helpful. I think I will push myself to
really really simplify what I'm doing going forwards.


3) What new Ruby method(s) did you use when refactoring your 
solution? Describe your experience of using the Ruby documentation 
to implement it/them (any difficulties, etc.). Did it/they 
significantly change the way your code works? If so, how?

I actually had used most of these methods before. Funnily enough, I
guessed ".chars" and when I tested it found out it was a real method (I
know ... not best practice, but hey this time it worked :)). Slice was
a method I remembered reading about in the David Black book, but did need
to look it up as a refresher. It took a lot of time for me to pull all
these methods out and slowly test each step in this code, but I am really
proud that all of this (ultimately) was in my head.

4) How did you initially iterate through the data structure?

I iterated through my code one method at a time and made sure that each
step did exactly what I wanted it to do!

5) Do you feel your refactored solution is more readable than 
your initial solution? Why?

Quite the opposite! I feel like my solution IS the refactored solution!
I am going to keep aiming for this --- initially creating an efficient
answer to the problem. Ironically, I don't know if I would call my
solution 'readable' --- it took me a long time to go through each step.
Had someone just put this answer in front of me (without me having
worked on it) it would have taken me some time to digest. I am working on
being able to read these one-lined codes more easily though on a first
readthrough.

=end

