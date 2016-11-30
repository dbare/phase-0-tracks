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

#created class

class Lucio
  def initialize
    puts "initializing hero 'Lucio'.... booting up sound system"
  end
  def heal(hero)
    puts "Time to heal #{hero}!"
  end
  def sound_barrier
    puts "*activates sound barrirer*"
  end
end

heal_heros = []
heros = ['Reinhardt', 'Zarya', 'D.Va', 'Roadhog', 'Winston']

50.times do |i|
  heal_heros[i] = Lucio.new
  heal_heros[i].heal(heros.sample)
  heal_heros[i].sound_barrier
end 

p heal_heros.length
