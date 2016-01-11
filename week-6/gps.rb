# Your Names
# 1) Sydney
# 2) Matt

# We spent [#] hours on this challenge.

=begin
What is this code actually trying to do?
First definition: serving size calculator
+++++ it takes an item and number of ingredients
+++++ makes sure it is in the library (raises error if not)
+++++ serving size = value at item in the hash
+++++ remaining ingredients = num ingred % serving size 
=end

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_servings)
  desserts = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  raise ArgumentError.new("#{item_to_make} is not a dessert we serve") unless desserts.has_key?(item_to_make) 
  
  #-------------------------------------------------

  serving_size = desserts[item_to_make]
  remaining_servings = num_of_servings % serving_size
  
  extra = "cookie" if remaining_servings < 5
  else extra = "cake"

  case remaining_servings
  when 0
    return "Calculations complete: Make #{num_of_servings / serving_size} #{item_to_make}"
  else
    return "Calculations complete: Make #{num_of_servings / serving_size} #{item_to_make}. You still have #{remaining_servings} servings remaining. Suggested baking items: #{remaining_servings/desserts[extra]} of #{extra}"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("pie",12)

p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

=begin
What did you learn about making code readable by working on this 
challenge?
It is important for code to be easily understood by others reading it
as what might be intuitive or obvious for one person might not be for
the next (including that same person but sitting at the code cold!)

Did you learn any new methods? What did you learn about them?
I used has_key for the first time which seems like a pretty useful
method!

What did you learn about accessing data in hashes? 
It is fairly similar to arrays. You can use 'each' and the key as
the 'index' to call values.

What concepts were solidified when working through this challenge?
I need to be better at naming my variables and be careful that my
code is easy to read!

=end

