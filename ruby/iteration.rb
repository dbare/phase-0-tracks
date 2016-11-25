def a_method
  variable = "\"Hello, World\""
  puts "this block won't run yet"
  yield(variable)
  puts "the block will now run"
end

a_method {|variable| puts "When the computer wakes up it says #{variable}"}

award_categories = ["Best Game", "Best Stroy", "Best Company"]
character_roles = {
  Cloud: "Final Fantasy VII",
  Geralt: "The Witcher"
}

award_categories.each do |category|
  puts category
end

character_roles.each do |character, game|
  puts "#{character} was in the game #{game}"
end

puts "data structures before map"
p award_categories
p character_roles

##############

#simple array and hash
array = ['a','b','c','d']
hash = {
  grass: 'green',
  ocean: 'blue',
  wind: 'loud',
  rain: 'wet'
}

#before they are modified
p array
p hash

#modified data to see changes
p array.delete_if {|letter| letter > 'b'}
p hash.delete_if{ |key, value| value == 'wet'}

#re-declaring array and hash since delete_if is destructive
array = ['a','b','c','d']
hash = {
  grass: 'green',
  ocean: 'blue',
  wind: 'loud',
  rain: 'wet'
}

#modified data: .select

p array.select {|letter| letter > 'b'}
p hash.select {|key, value| value == 'wet'}

#modified data: .reject
p array.reject{|letter| letter > 'b'}
p hash.reject{|key, value| value == 'wet'}

#modified data: drop_while
p array.drop_while{|letter| letter < 'b'}

#could not find a way to do it for a hash.....





