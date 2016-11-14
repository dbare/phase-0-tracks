class WordGuess
	def initialize
		puts 'initializing game...'
	end
	def get_answer(answer)
		answer
	end
	def number_of_guesses(answer)
		@guesses = answer.chars
		@guess_length = @guesses.length
	end
	def guess_word(answer, input)
		placeholders = ''
		answer.chars {|letter|
			placeholders += (input.include? letter)? letter: '*'}
		placeholders
	end
end
=begin
word_game = WordGuess.new
wrong_guess = 0

puts 'Enter a secret word for P2 to guess:'
word = gets.chomp
secret_word = word_game.get_answer(word)
guesses = word_game.number_of_guesses(secret_word)
guess = ''

p word_game.guess_word(word, '*')
loop do 
	puts 'P2, you #{guesses - wrong_guess} guesses left! Guess another letter!'
	another_guess = gets.chomp
	if word.include?(another_guess)
		if guess.include? (another_guess)
			puts 'The letter #{another_guess} was already guessed! Try again!'
			p word_game.guess_word(word, guess)
		else
			puts 'Heyyyyyy, the secret word has #{another_guess} in it!'
			guess = guess + another_guess
			scramble = word_game.guess_word(word, guess)
			p scramble
		end 
		if (scramble.include? ('*')) == false
			puts 'Yayayayay! You guessed the secret word!'
			break
		end
	else 
		puts 'The secret word does not contain #{another_guess}, maybe you should give up....'
		wrong_guess += 1
		if wrong_guess == guesses
			puts 'Good Game Well Played, better luck next time! The answer was #{secret_word}.'
			break
		else
			scramble = word_game.placeholders(word,guess)
			p scramble
		end
	end
end 