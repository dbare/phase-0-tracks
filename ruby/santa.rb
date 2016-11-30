class Santa


	def initialize(gender, ethnicity)
		puts "Initializing Santa instance...."
		@age = 0
		@ethnicity = ethnicity
		@example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
		@example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
		@gender = gender
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end
	def speak
		puts "Ho, ho, ho! Happy holidays!"
	end
	def eat_milk_and_cookies(flavor)
		puts "That was a good #{flavor} cookie!"
	end
end

santa = Santa.new("male", "black")
santa.speak
santa.eat_milk_and_cookies("Oatmeal Raisin")

=begin
santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")
=end



