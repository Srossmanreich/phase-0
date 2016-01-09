# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
# Split input string up by spaces
# Put each item from the input list into the hash
# Set default quantity equal 1
  # print the list to the console [can you use one of your other methods here?]
# output: hash of items

hash = Hash.new

def create(string,hash)
  string.split(" ").each {|item| hash[item] = 1}
  print hash
end

create("carrots apples cereal pizza",hash)

# Method to add an item to a list
# input: item name and optional quantity and hash
# steps: Add item and list to hash 
# output: hash

def add(item, quantity, hash)
  hash[item] = quantity
  print hash
end

add("chocolate", 1, hash)

# Method to add items to a list
# input: hash and array of item and quantity
# steps: Take big array and set up an ordered (hash) list with the items and quanities. Then merge (or perhaps update) this new list with the old list
# output: hash

def adds(string,numbers,hash)
  array_s = string.split(" ")
  array_n = numbers.split(" ")
  new_hash={}
  i = 0
  loop do
  	if array_s[i]
  		new_hash[array_s[i]] = array_n[i]
  		i += 1
  	else
  		new_hash.each{|key,value|hash[key]=value}
  		break
  	end
  end
  print hash
end

adds("chair crepe orange lemons","2 3 4 1",hash)



# Method to remove an item from the list
# input: hash and item
# steps: Check if item to delete matches an item in the list and if it does delete the item.
# output: hash

def remove(item, hash)
  hash.delete(item)
  print hash
end

remove("carrots",hash)


# Method to update the quantity of an item
# input: hash, item, new quantity
# steps: find the item in the list and change its quantity to the new quantity
# output: hash

def update(item, new_q, hash)
  hash[item]=new_q
  print hash
end

update("pizza",4000,hash)

# Method to print a list and make it look pretty
# input: hash
# steps: Sort the list and then print each item on a different line
# output: PRETTY list

def pretty(hash)
  hash.each{|key,value|puts"#{key}: #{value}"}
end

pretty(hash)



