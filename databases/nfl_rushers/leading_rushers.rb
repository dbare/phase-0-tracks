require 'sqlite3'

running_back_db = SQLite3::Database.new ('running_backs.db')

running_back_db.execute("SELECT * FROM running_backs") do |row|
	p "#{row[0]}) #{row[1]}"
	puts
end

puts "This database holds information on the top 50 all time leaders in Rushing Yards in the NFL."
puts "What stats would you like to view?"  
puts "Type 'yards' for look at total rushing yards."
puts "Type 'active' to view yards of active players."
puts "Type 'inactive' to view yards of inactive players."
puts "To see a specfic players total, type their name in."
input = gets.chomp

#this was to put all the RBs names into an array so i could pull out a specific players info.
def running_back_names(db)
	$RB_ARRAY = []
	db.execute("SELECT running_backs.name FROM running_backs") do |row|
		row.each do |name|
			$RB_ARRAY << name
		end
	end
$RB_ARRAY
end

running_back_names(running_back_db)

=begin
rb_names = running_back_db.execute("SELECT running_backs.name FROM running_backs") do |row|
	rb_array = []
	row.each do |name|
		rb_array << name
	end
 rb_array
end
=end


if input == 'yards'
	running_back_db.execute("SELECT running_backs.id, running_backs.name, running_backs.yard FROM running_backs") do |row|
		puts "#{row[0]}) #{row[1]}, has #{row[2]} yards in his career."
		puts
	end
elsif input == 'active'
	running_back_db.execute("SELECT running_backs.id, running_backs.name, running_backs.yard FROM running_backs WHERE active='true'") do |row|
		puts "#{row[1]}, is still active in the NFL today with #{row[2]} rushing yards and is at rank #{row[0]} all time"
		puts
	end
elsif input == 'inactive'
	running_back_db.execute("SELECT running_backs.id, running_backs.name, running_backs.yard FROM running_backs WHERE active='false'") do |row|
		puts "#{row[1]} retired with #{row[2]} rushing yards, at number #{row[0]} overall."
		puts
	end
		
#Could not get this conditional to work correctly
=begin
elsif running_back_names(running_back_db).include?(input) == true
	running_back_db.execute("SELECT running_backs.id, running_backs.name, running_backs.yard, running_backs.active FROM running_backs WHERE name=#{input}") do |row|
		puts  "#{row[0]}) #{row[1]}, has #{row[2]} yards in his career."
		puts
	end
=end 

else 
	puts "Invalid input, please try again."
end




