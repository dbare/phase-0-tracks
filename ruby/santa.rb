class Santa
	attr_accessor :gender, :age, :ethnicity

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
	def celebrate_birthday(current_age)
		@celebrate_birthday = current_age + 1
		p @celebrate_birthday
	end
	def get_mad_at=(reindeer_name)
			@get_mad_at = @reindeer_ranking.last(reindeer_name)
			p @get_mad_at
	end
end

santa = Santa.new("male", "black")
santa.speak
santa.eat_milk_and_cookies("Oatmeal Raisin")
santa.celebrate_birthday(24)
#santa.get_mad_at("Dasher")  ---> not entirely sure why this isnt working

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



