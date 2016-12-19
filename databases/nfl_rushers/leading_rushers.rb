require 'sqlite3'

running_back_db = SQLite3::Database.new ('running_backs.db')

running_back_db.execute("SELECT * FROM running_backs") do |row|
	p row[0], row[1]
	puts
end


puts "What stats would you like to view?"  
puts "Type 'yards' for look at total rushing yards."
puts "Type 'active' to view yards of active players."
puts "To see a specfic players total, type their name in."
input = gets.chomp

rb_names = running_back_db.execute("SELECT running_backs.name FROM running_backs") do |row|
	rb_array = []
	row.each do |name|
		rb_array << name
	end
 p rb_array
end

if input == 'yards'
	running_back_db.execute("SELECT running_backs.id, running_backs.name, running_backs.yard FROM running_backs") do |row|
		puts "#{row[0]}) #{row[1]}, has #{row[2]} yards in his career."
	end
elsif input == 'active'
	running_back_db.execute("SELECT running_backs.id, running_backs.name, running_backs.yard FROM running_backs WHERE active='true'") do |row|
		puts "#{row[1]}, is still active in the NFL today with #{row[2]} rushing yards and is at rank #{row[0]} all time"
	end
elsif rb_array.include?(input) == true
	running_back_db.execute("SELECT running_backs.id, running_backs.name, running_backs.yard, running_backs.active FROM running_backs WHERE name=#{input}") do |row|
		puts  "#{row[0]}) #{row[1]}, has #{row[2]} yards in his career."
	end
else 
	puts "Invalid input, please try again."
end
