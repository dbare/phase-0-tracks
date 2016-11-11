number_of_santas = 0

until number_of_santas == 50 do
	class Santa
		attr_accessor :age, :ethnicity, :gender


		def initialize(gender,ethnicity)
			example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
			example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

			puts 'initializing Santa instance........'
			@gender = example_genders[rand(example_genders.length)]
			@ethnicity = example_ethnicities[rand(example_ethnicities.length)]
			@age = rand(1..140)
			@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		end
		def speak
			puts 'Ho, ho ,ho! Haaaaappy holidays!'
		end
		def eat_milk_and_cookies(cookie_type)
			puts 'That was a good ' + cookie_type +' cookie!'
		end
		def celebrate_birthday=(current_age)
			@celebrate_birthday = current_age + 1
			p @celebrate_birthday
		end
		def get_mad_at=(reindeer_name)
			@get_mad_at = @reindeer_ranking.last(reindeer_name)
			p @get_mad_at
		end
	end
	puts 'This Santa is #{@age} years old and loves being santa.'
	puts 'They are #{@ethnicity}.'
	puts 'When it comes to gender they are: #{@gender}'
	number_of_santas += 1
end 

santa = Santa.new(' ',' ')

#santa.speak
#santa.eat_milk_and_cookies('Oatmeal')
#santa.celebrate_birthday = 0
#p santa.age
#p santa.ethnicity
#p santa.gender




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


