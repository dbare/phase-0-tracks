#def a method 
# -create an array, separating the first and last name
#  =reverse the array
# -create a string containing all vowels
#  =iterate input over string to advance vowels
# -create a string conttainng all consonants
#  =iterate input over string to advance consonants
full_name = ''
alias_array = []
secret_identity = []
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
	secret_identity << full_name
		if full_name == "quit"
			secret_identity.delete("quit")
			break 
		end

	reversed_name = swap_names(full_name)
	swaped_vowels = vowel_adv(reversed_name)
	secret_alias = consonant_adv(swaped_vowels)	
	p secret_alias
	alias_array << secret_alias

end

p alias_array
p secret_identity