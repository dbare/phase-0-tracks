full_name = ''
alias_array = []
secret_identity = []

def swap_names(name)
	name = name.split(' ').reverse
	name_new = name.join
end 
def vowel_adv(name)
	vowels = ['a','e','i','o','u']
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
def costonant_adv(name)
	consonants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']
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

while full_name != 'quit' do
	puts 'please enter a name:'
	full_name = gets.chomp.downcase
	full_name = full_name.to_s
	secret_identity << full_name
		if full_name == 'quit'
			secret_identity.delete('quit')
			break
		end 

	reversed_name = swap_names(full_name)
	swaped_vowels = vowel_adv(reversed_name)
	secret_alias = costonant_adv(swaped_vowels)
	alias_array << secret_alias
	p secret_alias
end 

p alias_array
p secret_identity







	