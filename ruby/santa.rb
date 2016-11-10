class Santa

	def initialize(gender,ethnicity)
		puts 'initializing Santa instance........'
		@gender = gender
		@ethnicity = ethnicity
		@age = 0
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end
	def speak
		puts 'Ho, ho ,ho! Haaaaappy holidays!'
	end
	def eat_milk_and_cookies(cookie_type)
		puts 'That was a good ' + cookie_type +' cookie!'
	end


	def celebrate_birthday=(current_age)
		current_age = @age + 1
	end
	def get_mad_at(reindeer_name)

	end
	def gender=
		@gender
	end
	def age
		@age +=1
		@age
	end
	def ethnicity
		@ethnicity
	end
end

santa = Santa.new(' ',' ')

santa.speak
santa.eat_milk_and_cookies('Oatmeal')
santa.celebrate_birthday(0)
#Release 1
=begin
santas = []


santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")

puts santas
=end


