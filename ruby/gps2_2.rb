# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# output: hash
# steps: 
  # 1) Store argument(string of items) separated into array by dividing it at each space
  # 2) Populate a hash with that string as the key and default value of 1
  # 3) Print hash to console
  # 4) Return hash
def add_item(groceries, new_item, quantity)
	groceries[new_item] = quantity
end

def delete_item(groceries, item)
	if groceries.include?(item)
		groceries.delete(item)
	end
	groceries
end

def update_quantity(groceries, item, quantity)
	if groceries.include?(item)
		groceries[item] = quantity
	end
	groceries
end

def print_list(grocery_list)
	grocery_list.each {|item, quantity| puts "#{quantity} #{item}s"}
end

def create_list(grocery_items)
	grocery_arr = grocery_items.split(" ")
	groceries = grocery_arr.each_with_object({}) do |item, grocery_hash|
		grocery_hash[item] = 1
	end
	#Replace with print method once available
	print_list(groceries)
	groceries
end

my_groceries = create_list("apple banana pear")

# Method to add an item to a list
# input: list(Hash), item name(str), and optional quantity(int)
# output: updated list(hash)
# steps:
	#1) Use item name as a new key and quantity as new value, push those 2 elements into hash
	#2) Return hash



add_item(my_groceries, "kiwi", 3)
puts my_groceries
# Method to remove an item from the list
# input: list(hash), item name(str)
# output: updated list(hash)
# steps:
	#1) Take the item name, see if it exists in the hash
	#2) Delete item
	#3) Return updated hash



# delete_item(my_groceries, "kiwi")
# puts my_groceries
# Method to update the quantity of an item
# input: list(hash), item to update(str), quantity to update(int)
# output: updated hash
# steps:
	#1)Take item name, see if it exists in the hash
	#2)Update quantity if it does exist
	#3)Return updated hash

update_quantity(my_groceries, "kiwi", 6)
puts my_groceries

# Method to print a list and make it look pretty
# input: List
# output: nil
# steps:
	#1) Pass in grocery list
	#2) Print each key value pair to console
