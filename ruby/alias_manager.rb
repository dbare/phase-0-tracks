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
