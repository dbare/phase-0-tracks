number_of_santas = 0

until number_of_santas == 50 do
	class Santa
		attr_reader :gender, :age, :ethnicity
		#attr_accessor :gender, :age, :ethnicity

		def initialize(gender, ethnicity)
			example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
			example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
			
			puts "Initializing Santa instance...."
			@age = 0
			@ethnicity = example_ethnicities[rand(example_ethnicities.length)]
			@gender = example_genders[rand(example_genders.length)]
			@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		end
		def speak
			puts "Ho, ho, ho! Happy holidays!"
		end
		def eat_milk_and_cookies(flavor)
			puts "That was a good #{flavor} cookie!"
		end
		def celebrate_birthday(current_age)
			@celebrate_birthday = current_age + 1
			p @celebrate_birthday
		end
		def get_mad_at=(reindeer_name)
				@get_mad_at = @reindeer_ranking.last(reindeer_name)
				p @get_mad_at
		end
		puts "This Santa is #{@age} years old and is a great Santa!"
		puts "They are #{@ethnicity}."
		puts "When it comes to gender they prefer: #{@gender}."
	end
	number_of_santas += 1
end 

santa = Santa.new(' ',' ')

=begin
santa = Santa.new("male", "black")
santa.speak
santa.eat_milk_and_cookies("Oatmeal Raisin")
santa.celebrate_birthday(24)
#santa.get_mad_at("Dasher")  ---> not entirely sure why this isnt working

santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")
=end



