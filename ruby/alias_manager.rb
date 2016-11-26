full_name = ''
alias_arrya = []
secret_identity = []

def swap_names(name)
	name = name.split(' ').reverse
	name_new = name.map do |letter|
		if vowels.inculde?(letter)
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