puts "How many employees will be taking the survey?"
number_of_surveys = gets.chomp
number_of_surveys = number_of_surveys.to_i

current_year = 2016
surveys_taken = 0


loop do
	surveys_taken += 1

	puts "What is your name?"
	vamp_name = gets.chomp
	vamp_name = vamp_name.to_s

	puts "How old are you?"
	age = gets.chomp.to_i


	puts "What year were you born?"
	year_born = gets.chomp.to_i


	puts "Our company cafeteria serves garlic bread, should we order some for you? (y/n)"
	garlic_bread = gets.chomp

	puts "Would you like to enroll in companies health insurance? (y/n)"
	insurance = gets.chomp
	insurance = insurance.to_s

	puts "Do you have any allergies?"
	allergies = gets.chomp
	allergies = ""

	real_age = current_year - year_born

	if real_age == age && garlic_bread == "y" || insurance == "y"
		puts "Probably not a Vamp."

	elsif real_age != age && (garlic_bread == "y" || insurance =="y")
		puts "Probably a Vamp."
	
	elsif garlic_bread == "n" && insurance == "n"
		puts "Almost certainly a Vamp."

	#Can't get this to output correctly, I tried nesting ths inside of another if statement to no avail.
	elsif vamp_name == "Drake Cula" || vamp_name == "Tu Fang"
		puts "Definitely a Vamp."
		
	else
		puts "Results inconclusive."

	end
				
	until allergies == "done" || allergies == "sunshine"
			puts "What other allergies do you have?"
			allergies = gets.chomp
				if allergies == "sunshine"
				puts "Probably a Vamp" 
				elsif allergies == "done"
					print "Nevermind what do these questions have to do with anything?"

				end
	end

	break if surveys_taken == number_of_surveys
	print "Nevermind what do these questions have to do with anything?"
end


