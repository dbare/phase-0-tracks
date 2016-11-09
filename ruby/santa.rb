class Santa

	def initialize(gender,ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		puts 'initializing Santa instance........'
	end

	def speak
		puts 'Ho, ho ,ho! Haaaaappy holidays!'
	end
	
	def eat_milk_and_cookies(cookie_type)
		puts 'That was a good ' + cookie_type +' cookie!'
	end
end

age = 0
reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

all_santas = []
all_santas << Santa.new('male', 'black')

all_santas.each do |santa|
	santa.speak
	santa.eat_milk_and_cookies('chocolate chip')
end


#Saint_Nick = Santa.new('male', 'african-american')
#Saint_Nick.speak
#Saint_Nick.eat_milk_and_cookies('Oatmeal Raisin')