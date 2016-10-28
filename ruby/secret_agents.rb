#Encryption
#-Ask for input of password
#	+iterate over string
#	+advance each letter by 1


def encrypt(pswd)

	index = 0
	while index < pswd.length
	   pswd[index] = pswd[index].next
	   index += 1
	end
	puts pswd
end

def decrypt(encrypted_pswd)
alphabet = "abcdefghijklmnnopqrstuvwxyz"
alphabet = alphabet.to_s


index = 0
	while index < encrypted_pswd.length
    if encrypted_pswd[index] == ""
	else
    temp=alphabet.index(encrypted_pswd[index])
    temp -= 1
   encrypted_pswd[index] = alphabet[temp]
   end
   index += 1
	end 
	puts encrypted_pswd
end


puts "Would you like to decrypt or encrypt your password?"
cryption = gets.chomp
cryption = cryption.to_s

if cryption == "decrypt"
	puts "Please enter a password:"
	real_password = gets.chomp
	decrypt("#{real_password}")
elsif cryption == "encrypt"
	puts "Please enter a password:"
	real_password = gets.chomp
	encrypt("#{real_password}")
else 
	puts "please try again"
end


#encrypt("abc")
#decrypt("abc")
#decrypt(encrypt("swordfish"))
#iterate through encrptyed pswd
	#for each character in pswd find its index in alphabet string
	#change encrypted character to alphabet index -1