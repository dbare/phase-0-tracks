class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  def speak(num)
    num.times{print "woof "}
    puts
  end
  def roll_over
    print "roll over"
    puts
  end
  def dog_years(year_old)
    dog_years = year_old/7
    print dog_years
    puts
  end
  def eat(food)
    puts "I love eating #{food}!"
    puts
  end
  def initialize
    print "initializing new puppy instance..."
  end
end

scooby = Puppy.new
scooby.fetch("clue")
scooby.speak(3)
scooby.roll_over
scooby.dog_years(14)
scooby.eat("pizza")