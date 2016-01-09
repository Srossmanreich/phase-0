# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Split items by space and put in an array
# output: hash with values as quantity

def create(items,list)
	items.split(" ").each{|i|list[i]=1}
	list
end

# Method to add an item to a list
# input: item name and optional quantity
# steps:
# output:

def add(item,quant,list_name)
	list_name[item] = quant
	list_name
end

# Method to remove an item from the list
# input:
# steps:
# output:

def delete(item,list_name)
	list_name.delete(item)
	list_name
end

# Method to update the quantity of an item
# input:
# steps:
# output:

def update(item,quant,list_name)
	list_name[item] = quant
	list_name
end

# Method to print a list and make it look pretty
# input:
# steps:
# output:

def print(list_name)
	list_name.each{|key,value|
		puts "#{key}:".ljust(0) + "\n#{value}"
	}
end

grocery={}
array =[]
list = "carrots apple cereal pizza"
p create(list,grocery)
p add("dogfood",2,grocery)
p delete("apple",grocery)
p update("carrots",5,grocery)
print(grocery)





