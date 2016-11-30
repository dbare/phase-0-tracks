class Santas

	@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	@age = 0

	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		puts "Initializing Santa instance...."
	end
	def speak
		puts "Ho, ho, ho! Happy holidays!"
	end
	def eat_milk_and_cookies(flavor)
		puts "That was a good #{flavor} cookie!"
	end
end

santas = Santas.new("male", "black")
santas.speak
santas.eat_milk_and_cookies("Oatmeal Raisin")