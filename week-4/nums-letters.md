#Nums-Letters Ruby MD

1) What does puts do?
Puts displays your output to the terminal with a new line. It does not actually return what has been put though. The return will be nil.

2) What is an integer? What is a float?
An integer is a whole number without any decimal places. It can be negative or positive and includes the number 0. A float is a number with deciminal places. For example 0.0 is a float, not an integer.

3) What is the different between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

Integer division will always return an integer (rounding down). In other words if you divide 11 by 2, the answer returned will be the whole number 5. Whereas if the division had used floats (11.0 / 2.0) the result would have been 5.5 (another float).

If I was explaining this to someone who was not a programmer, I would tell them that when you divide expect a decimal place only if the division involved numbers with decimal places.

#Mini-Challenges

1) Hours in a year

```ruby
365*24
```

2) Minutes in a decade

```ruby
10*365*24*60
```
#Reflect

How does Ruby handle addition, subtraction, multiplication, and division of numbers?

Ruby handles basic math operators well. You simply need to input the values and operators and then run the file to see the results. Only note is to be careful of dividing integers if you want a float output (but it is very easy to change number directly to floats or the variable names for those numbers to floats)

What is the difference between integers and floats?

Integers are whole numbers (positive, negative, or 0) that have no decimal places. Floats have decimals (and include such numbers as 0.0 and 1.0, etc.)

What is the difference between integer and float division?

Integer division will return an integer (rounded down) instead of a float. For example 9 / 2 would return 4. Whereas float division will return floats. So 9.0 / 2.0 (or even if just one of those numbers were a float) the output would be 4.5

What are strings? Why and when would you use them?

Strings are written output that isn't operated on, most commonly text (although a number can be included in a string)

What are local variables? Why and when would you use them?

Local variables are variables you've defined on your local client (or file). You would use a local variable when there is a string or number you plan to use more than once and want to be able to call back quickly with a simple variable name.

How was this challenge? Did you get a good review of some of the basics?

This challenge was a good refresher on basic ruby concepts. I like that we've started again from the beginning. Can't wait to dig deeper!

#Links to challenge solutions

Basic-math.rb: https://github.com/Srossmanreich/phase-0/blob/master/week-4/basic-math.rb
Defining-variables.rb: https://github.com/Srossmanreich/phase-0/blob/master/week-4/defining-variables.rb
Simple-string.rb: https://github.com/Srossmanreich/phase-0/blob/master/week-4/simple-string.rb

