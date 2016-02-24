# Your Names
# 1) Emily Osowski
# 2) Sydney Rossman-Reich

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

# Defining our serving size calculator method

def serving_size_calc(item_to_make, servings_of_item_to_make)
  
# Defining our library of baked goods we can make
  
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  
# Raises error if trying to bake item not in library  

  raise ArgumentError.new("{item_to_make} is not a valid input") unless library.has_key?(item_to_make)

  
# Pulling the serving size at the item being baked

  serving_size = library[item_to_make] 
  
# Remaining servings
  
  remaining_servings = servings_of_item_to_make % serving_size
 
# Feature  
  
  if remaining_servings == 6
    extra_item = "1 cake and 1 cookie"
  elsif remaining_services == 5
    extra_item = "1 cake"
  else
    extra_item = "#{remaining_servings} cookie(s)"
  end
  
  
# Output statements

  if remaining_servings == 0

# So if no extra servings, then print statement saying how many of the item you've made
    
    return "Calculations complete: Make #{servings_of_item_to_make / serving_size} of #{item_to_make}"
    
# If extra servings, print number of items and however many remaining servings + the TODO item
    
  else
    return "Calculations complete: Make #{servings_of_item_to_make / serving_size} of #{item_to_make}, you have #{remaining_servings} leftover ingredients. Suggested baking items: #{extra_item}"
  end
  
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("pie", 12)
p serving_size_calc("THIS IS AN ERROR", 5)



#  Reflection

=begin
On your own, add a commented reflection section to your gps.rb file. Answer the following questions in your reflection:

1) What did you learn about making code readable by working on this challenge?

Similar to last time I did this GPS, I re-learned that readability doesn't just apply to the code itself. Naming variables well is really really crucial to writing good code.

2) Did you learn any new methods? What did you learn about them?

I didn't learn any new methods, but REALLY reviewed old methods. Man, I've written about my frustrations juggling between JS and ruby before. Now going back and doing ruby exercises is still more challenging having the JS syntax also in mind.

3) What did you learn about accessing data in hashes? 

There are shortcuts to figuring out whether a key or value exists in a hash (whether or not you want to return that particular item or not)

4) What concepts were solidified when working through this challenge?

Again, how important naming variables are as well as how much impact a good refactoring can have. I don't think the original author of this code did a horrible job (much of my initial pass at coding looks like his/hers), but this exercise proves how critical going back to refactor can be

=end