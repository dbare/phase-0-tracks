#start an empty hash
# => enter client details into empty hash
# => when questions are answered print hash to screen
# => give user a chance to update a key
# => print latest version of hash
# => exit program

puts "What is your name?"
user_name = gets.chomp

puts "What is you age?"
age = gets.chomp

puts "How many children do you have?"
children_num = gets.chomp

puts "What decore theme would you like?"
theme = gets.chomp

information = {
	user_name: user_name,
	age: age,
	children_num: children_num,
	theme: theme,
}

p information

puts "Which informatin do you need to update?"
update = gets.chomp

if update == "none"
elsif update == "name"
	puts "What is your name?"
	information[:user_name] = gets.chomp
elsif update == "number of children"
	puts "How many children to you have?"
	information[:children_num] = gets.chomp
elsif update == "age"
	puts "what is your age?"
	information[:age] = gets.chomp
else update == "theme"
	puts "what theme would you like?" 
	information[:theme] = gets.chomp
end

p information	