# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb (this file)
# 2. What is the line number where the error occurs?
# The error message says line 170 (but I suspect this isn't exactly right)
# 3. What is the type of error message?
# Syntax Error
# 4. What additional information does the interpreter provide about this type of error?
# It says there is an "unexpected end-of-input" and that it is "expecting keyword_end"
# 5. Where is the error in the code?
# The error in the code is shown to be at the very end of the document
# 6. Why did the interpreter give you this error?
# The interpreter gave me this error because the code above is missing an end that the
# interpreter looks over the entire document without finding (which is why it says the
# the error is at the very end of the file)

# --- error -------------------------------------------------------

south_park = nil

# 1. What is the line number where the error occurs?
# Line 38
# 2. What is the type of error message?
# 'in '<main>''
# 3. What additional information does the interpreter provide about this type of error?
# It says there is an undefined local variable or method 'south_park'
# 4. Where is the error in the code?
# The error occurs with the undefined 'south_park'
# 5. Why did the interpreter give you this error?
# I received this error because the variable south_park is undefined and so the
# interpretor doesn't know what to do with the code above.

# --- error -------------------------------------------------------

def cartman()
	puts "Hella cool!"
end

cartman()

# 1. What is the line number where the error occurs?
# Line 54
# 2. What is the type of error message?
# 'in '<main>''
# 3. What additional information does the interpreter provide about this type of error?
# The interpretor says there is an undefined method 'cartman'
# 4. Where is the error in the code?
# The error is the entire undefined method
# 5. Why did the interpreter give you this error?
# The interpretor doesn't understand what I want it to do with the method 'cartman'
# since it has no definition.

# --- error -------------------------------------------------------

def cartmans_phrase(x)
  puts "I'm not fat; I'm big-boned!"
  puts x
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# Line 74
# 2. What is the type of error message?
# Argument error
# 3. What additional information does the interpreter provide about this type of error?
# It says the wrong number of arguments have been used for the cartmans_phrase method
# 4. Where is the error in the code?
# The error happens at line 78 (where the wrong number of arguments are used)
# 5. Why did the interpreter give you this error?
# I received this error because the method cartmans_phrase is defined to have zero 
# arguments yet at line 78 an argument is given.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("Where are my cheesypoofs!")

# 1. What is the line number where the error occurs?
# Line 95
# 2. What is the type of error message?
# Argument error
# 3. What additional information does the interpreter provide about this type of error?
# Again, the wrong number of arguments have been given
# 4. Where is the error in the code?
# The error is at line 99
# 5. Why did the interpreter give you this error?
# At line 99 cartman_says is passed no arguments but it its definition demands that it
# should be



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming', 'Kenny')

# 1. What is the line number where the error occurs?
# Line 117
# 2. What is the type of error message?
# Argument error
# 3. What additional information does the interpreter provide about this type of error?
# That I have the wrong number of arguments again (1 when I should have 2)
# 4. Where is the error in the code?
# The error occurs at line 121
# 5. Why did the interpreter give you this error?
# At line 121 only 1 argument is given when two should be.

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# Line 136
# 2. What is the type of error message?
# Type Error
# 3. What additional information does the interpreter provide about this type of error?
# It says a string is trying to be coerced into a Fixnum
# 4. Where is the error in the code?
# The error is at line 136 (I suspect where the '*' is)
# 5. Why did the interpreter give you this error?
# It gave us this error because we tried to multiply 5 by a string (instead of the other
# way around)

# --- error -------------------------------------------------------

amount_of_kfc_left = 20 - 20


# 1. What is the line number where the error occurs?
# Line 152
# 2. What is the type of error message?
# ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# It basically notes that we cannot divide by 0
# 4. Where is the error in the code?
# Where the division by 0 takes place
# 5. Why did the interpreter give you this error?
# It is illegal in math to divide by 0

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# Line 168
# 2. What is the type of error message?
# Load error
# 3. What additional information does the interpreter provide about this type of error?
# It says it cannot load the file and then lists the current path
# 4. Where is the error in the code?
# The error occurs with the require method and unfound file
# 5. Why did the interpreter give you this error?
# I received this error because 'cartmans_essay.md' doesn't exist on my local client


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

=begin
Which error was the most difficult to read?
The mising end was not one I caught before running the file, but once I read the
error message the mistake was clear.

How did you figure out what the issue with the error was?
One the error message popped up it was obvious (especially since the snippet of code
was so small)

Were you able to determine why each error message happened based on the code? 
Yes! The error code was very helpful.

When you encounter errors in your future code, what process will you follow to 
help you debug?
I actually thought simply running my code was the most helpful. I do think I will run my
code in pieces as I work on it rather than checking for errors at the very end. Working
bits at a time was really useful!

=end

