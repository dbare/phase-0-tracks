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

puts "What information would you like to update?"
update = gets.chomp

if udpdate == "none"
elsif update == "name"
	puts "what is your name?"
	user_info[:user_name] = gets.chomp
elsif update == "number of children"
	puts "How many children do you have?"
	user_info[:children_num] = gets.chomp
elsif update == "age"
	puts "what is your age?"
	user_info[:age] = gets.chomp
else update == "theme"
	puts "what theme do you want?"
	user_info[:theme] = gets.chomp
end 

p user_info
	}
		






