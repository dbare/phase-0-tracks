class Puppy

  def initialize
    print "initializing new puppy instance..."
  end
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  def speak(num)
    num.times{print "woof "}
    puts
  end
  def roll_over
    puts "*rolls over*"
  end 
  def dog_years(years_old)
    dog_age = years_old/7
    print dog_age
    puts
  end
  def eat(food)
    puts "I love eating #{food}!"
    puts
  end
end

scooby = Puppy.new
scooby.fetch("clue")
scooby.speak(3)
scooby.roll_over
scooby.dog_years(14)
scooby.eat("pizza")