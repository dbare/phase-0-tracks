module Shout
	def yell_angrily(words)
		words + '!!!' + ' :('
	end
	def yelling_happily(words)
		words + '!!!' + ' :)'
	end
end

#p Shout.yell_angrily('NOOOO')
#p Shout.yelling_happily('Yayyyyyy')

class Human
	include Shout
end

class Monkey
	include Shout
end

human = Human.new
p human.yell_angrily('NOOOO')
p human.yelling_happily('Yayyyyyy')

monkey = Monkey.new
p monkey.yell_angrily('OO OO AH AH AH')
p monkey.yelling_happily('OO OO OO OOOOOOO')