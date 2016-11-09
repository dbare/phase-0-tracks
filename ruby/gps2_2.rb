# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
def create_grocery_list(groceries)
# steps:	
  # set default quantity
  # create a hash to store the items
  grocery_hash = {}
  # loop through each item in the input string
  groceries.split(' ').each do |list_item|
  # for each item
  # key == item name, value == qty
	  add_item(grocery_hash, list_item)
	end
  # print the list to the console [can you use one of your other methods here?]
  p grocery_hash
# output: hash (our list)
end

# Method to add an item to a list
# input: list, item name, and optional quantity
def add_item(list_hash,item_name, item_qty=1)
# steps:
  # store item in the list hash, item name will be the key, value is going to be the qty
	list_hash[item_name] = item_qty
# output: updated hash with new items (key value pair)
	list_hash
end


# Method to remove an item from the list
# input: list(hash), item name (key)
def remove_item(list_hash,item)
# steps: remove the key from the hash
	list_hash.delete_if{|item_name, qty| item_name == item}
# output: updated hash with item removed
#	list_hash
end


# Method to update the quantity of an item
# input: list, item name, value(qty)
def quantity_update(list_hash, grocery_item, ajusted_qty)

# steps: replace value for passed-in key
# output: updated hash with new information
	list_hash.each{|item,qty| list_hash[grocery_item] = ajusted_qty}

end

# Method to print a list and make it look pretty
# input: list (hash)
def print_list(full_grocery_hash)
# steps: 
  # iterate through the hash and print formatted key value pairs, i.e. {key}: {value}
  full_grocery_hash.each { |key,value| puts '#{key}'+':'+' #{value}'}

  	  
# output: string (representing the list)
end

list = create_grocery_list('bananas pizza cookies')
create_grocery_list('bananas pizza cookies')
p add_item(list, 'pie', 10)
p remove_item(list, 'pie')
p quantity_update(list, 'pizza', 50)
p print_list(list)

=begin
-Pseudocode can be extremely helpful if dont correctly, it can be the map for the rest of your project.
-it is easy to iterate over arrays because index number are consistant throughout all arrays, hashes have a different set of values and keys depending on the information give.
-a method returns a value
-you can pass a string, a hash, an array, an iteger or a variable.
-refactoring is still a bit lost on me, but I understand the idea of using methods and hashes together to store and manipulate data
	
=end


