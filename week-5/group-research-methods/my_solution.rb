# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(array, a)
  array.find_all { |value| value.to_s.include?(a) }
end

def my_hash_finding_method(hash, num)
  hash.find_all { |key, value| value == num}.to_h.keys
end

# Identify and describe the Ruby method(s) you implemented.
# find_all which searches for values in an array or hash that match some
# => criteria you define
# to_s turns values to strings
# include? returns a boolean if the object attached to contains the value
# => chosen
# to_h turns an object to a hash
# keys returns just the key values in a hash

# Person 2
def my_array_modification_method!(array, num)
  array[2] = array[2] + num
  array[-1] = array[-1] + num
  array
end

def my_hash_modification_method!(hash, num)
  hash.each {|key,value| hash[key] = value + num}
end

# Identify and describe the Ruby method(s) you implemented.
# each which iterates over key,value pairs in a hash
#
#


# Person 3
def my_array_sorting_method(array)
  array.sort_by{|x|x.to_s}
end

def my_hash_sorting_method(hash)
  hash.sort_by {|key,value| value}
end

# Identify and describe the Ruby method(s) you implemented.
# sort_by which sorts an object in a specific way you define
# to_s which turns elements of an object to strings
#


# Person 4
def my_array_deletion_method!(array, a)
  array.delete_if { |value| value.to_s.include?(a) }
end

def my_hash_deletion_method!(hash, name)
  hash.delete_if {|key,value| key == name}
end

# Identify and describe the Ruby method(s) you implemented.
# delete_if which deletes an element of an object if it meets some
# => parameter you have set
#


# Person 5

def my_array_splitting_method(array)
  array.group_by {|value| value.class}.values.reverse
end

=begin
def my_array_splitting_method(array)
  num = []
  words = []
  array.each { |value|
    if value.class == Fixnum
      num << value
    else
      words << value
    end
  }
  [num,words]
end
=end

def my_hash_splitting_method(hash, age)
  hash.group_by {|key,value| value <= age}.values.reverse
end


# Identify and describe the Ruby method(s) you implemented.
# reverse which switches the order of the values in the hash / array
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
# I was in charge of person 2 and chose to use the each method for iterating
# => over the hash to affect each item in the hash in the specific way I
# => wanted


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
# I learned that both researching methods and explaining methods is
# => challenging. I found it difficult to use common (non-programming)
# => language to describe what methods did.
#