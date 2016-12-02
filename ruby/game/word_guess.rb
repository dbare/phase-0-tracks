class WordGuess
	def initialize
		puts "initializing game..."
	end
	def get_answer(answer)
		answer
	end
	def num_of_guesses(answer)
		@guesses = answer.char
		@guess_length = @guesses.guess_length
	end
	def guess_word(answer, input)
		placeholders = ''
		answer.chars {|letter|
			placholders += (input.include? letter)? letter: '*'}
		placehoders
	end
end

word_game = WordGuess.new
wrong_guess = 0 

puts "Please enter a word for P2 to guess:"
word = gets.chomp
secret_word = word_game.get_answer(word)
guesses = word_game.num_of_guesses(secret_word)
guess = ''

p word_game.guess_word(word, '-')
loop do 
	puts "P2, you have #{guess - wrong_guess} guesses left. Guess again!"
	another_guess = gets.chomp
	if word.include?(another_guess)
		if guess.include?(another_guess)
			puts "The letter #{another_guess} was already guessed. Try again!"
		else 
			puts "The secret word has #{another_guess} in it!"
			guess = guess + another_guess
			scramble = word_game.guess_word(word, guess)
			p scramble
		end
		if (scramble.include? ('*')) == false
			puts "Yay! You guessed the secret word!"
			break
		end
	else
		puts "the secret word does not have #{another_guess} in it, maybe you shold give up...."
		wrong_guess += 1
		if wrong_guess == guesses
			puts "You have have reached you guess limit. Game Over! hahahaha!"
			break
		else
			scramble = word_game.placehoders(word, guess)
			p scramble
		end
	end 
end 













