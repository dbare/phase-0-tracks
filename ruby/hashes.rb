#prompt user to enter details 
# - put client details in the empty hash
# - print answered questions
# - after questions are answered give the user a chance to update a key
# - print the lastest updated hash
# - exit program

puts 'What is your name?'
name = gets.chomp

puts 'What is your age?'
age = gets.chomp

puts 'How many children do you have?'
children_num = gets.chomp

puts 'What theme would you like?'
theme = gets.chomp

user_info = {
	name: name,
	age: age,
	children_num: children_num,
	theme: theme,
}

p user_info