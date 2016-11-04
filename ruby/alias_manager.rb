#def a method 
# -create an array, separating the first and last name
#  =reverse the array
# -create a string containing all vowels
#  =iterate input over string to advance vowels
# -create a string conttainng all consonants
#  =iterate input over string to advance consonants
full_name = ''
alias_hash = {}
hash_counter = 0


	def swap_names(name)
		name = name.split(' ').reverse
		name_new = name.join
	end
	def vowel_adv(name)
		vowels = ["a","e","i","o","u"]
		name = name.split('')
		name_new = name.map do |letter|
			if vowels.include?(letter)
				vowels.rotate[vowels.index(letter)]
			else
				letter
			end
		end
		name_new.join
	end
	def consonant_adv(name)
		consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]
		name = name.split('')
		name_new = name.map do |letter|
			if consonants.include?(letter)
				consonants.rotate[consonants.index(letter)]
			else
				letter
			end
		end
		name_new.join
	end

while full_name != "quit" do
puts "Please enter a name to get an alias:"
	full_name = gets.chomp.downcase
	full_name = full_name.to_s

	

	reversed_name = swap_names(full_name)
	swaped_vowels = vowel_adv(reversed_name)
	p consonant_adv(swaped_vowels)	


#need to out put hash so it lookes like -> alias_hash = {full_name => "#{consonant_adv(swaped_vow)}"}

  break if full_name == "quit"
  alias_hash[:"#{consonant_adv(swaped_vowels)}"] 

end


p alias_hash
