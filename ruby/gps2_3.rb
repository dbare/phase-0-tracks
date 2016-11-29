# Method to create a list
def grocery_list(items)
	grocery_hash = {}
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create an array from input using .split(' ') 
  # set default quantity to 1
  # print the list to the console [can you use one of your other methods here
  # iterate through array and make each index a key
  groceries = items.split(' ').each do |list_item|
  	add_item(grocery_hash, list_item)
  end
  p grocery_hash
# output: hash
end

# Method to add an item to a list
# input: item name and optional quantity
def add_item(list_hash, item_name, item_qty=1)
# steps: add item to hash with default value
	list_hash[item_name] = item_qty
# output: updated hash with added item
	list_hash
end 

# Method to remove an item from the list
# input: item from list(hash)
def remove_item(list_hash, item)
# steps: iterate through hash for input
	list_hash.delete_if{|item_name, qty| item_name == item}
# remove input
# output: updated list with item removed
end

# Method to update the quantity of an item
# input: the key and desired value
def quantity_update(list_hash, grocery_item, adjusted_qty)
# steps: iterate through the list(hash) and replace the value of the key/value pair
	list_hash.each{|item,qty| list_hash[grocery_item] = adjusted_qty}
end
# output: updated list

# Method to print a list and make it look pretty
# input: the list
def print_list(full_grocery_hash)
# steps: iterate through the list(hash) and print so it looks nice
# output: the list looking prettier
	full_grocery_hash.each {|key, value| puts "#{key}"+":"+" #{value}"}
end

list = grocery_list('apples oranges pears')
grocery_list('apples oranges pears')
p add_item(list, 'cake', 20)
p remove_item(list, 'pie')
p quantity_update(list, 'pizza', 50)
p print_list(list)
