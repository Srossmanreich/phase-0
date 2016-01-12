# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
# p array[0][1][1][2][0]
p array[1][1][2][0]



# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

new_array = number_array.map do |element|
  if element.kind_of?(Array)
    element.map {|inner| (inner += 5) }
  else
    element += 5
  end
end


p new_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_namesly = startup_names.map { |element|
  if element.kind_of?(Array)
    element.map {|inner| 
      if inner.kind_of?(Array)
        inner.map {|doubleinner|
          (doubleinner += "ly")}
      else
        (inner += "ly")
      end
      }
  else
    (element += "ly")
  end
  }

p startup_namesly

# Refactor:

startup_namesly = startup_names.flatten.map{|v| v += "ly"}

p startup_namesly

=begin
	
Reflection

1) What are some general rules you can apply to nested arrays?
I think counting the number of layers before coding is a good first
step. And then being really careful in what you name each subsequent
layer.

2) What are some ways you can iterate over nested arrays?
By nesting each methods --- although I really feel like there is a
better way than what I have done. Can't wait to see what others chose
to do this week.

3) Did you find any good new methods to implement or did you 
re-use one you were already familiar with? What was it and why 
did you decide that was a good option?
I searched for new methods but did not find anything striking so I
ended up sticking with what I was familiar with. Again, I am not
sure if this was the best option actually.

=end

