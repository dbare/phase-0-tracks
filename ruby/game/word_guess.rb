class WordGuess
	#initialize class
	def initialize
		puts "initializing game..."
	end
	#method for getting answer for game
	def get_answer(answer)
		answer
	end
	#method for number of guesses
	def num_of_guesses(answer)
		#put all guesses into an array
		@guesses = answer.chars
		#set num of guesses = to length of the secret word
		@guess_length = @guesses.length
	end
	#method of issuing placeholders
	def guess_word(answer, input)
		placeholders = ''
		#iterate thru answer, if input includes a correct letter then it will replace it with a '-'
		answer.chars {|letter|
			placeholders += (input.include? letter)? letter: '-'}
		placeholders
	end
end

#initialize a new instance of WordGuess
word_game = WordGuess.new
#set number of curret gueses to 0
wrong_guess = 0 

###### User interface ######

#have P1 enter a word for p2 to guess
puts "Please enter a word for P2 to guess:"
#store the word in a variable 'word'
word = gets.chomp
#call the WordGues get_answer method to store the secret word
secret_word = word_game.get_answer(word)
#call the WordGuess num of guesses method to determine the number of guesses P2 gets and store it in a variable.
guesses = word_game.num_of_guesses(secret_word)
guess = ''

p word_game.guess_word(word, '-')
#set loop
loop do 
	#tell P2 how many guesses they have left, and promt them to keep guessing
	puts "P2, you have #{guesses - wrong_guess} guesses left. Guess again!"
	#set the input = to another guess
	another_guess = gets.chomp
	#if 'another_guess' is in the word
	if word.include?(another_guess)
		#and if 'another_guess' is in guess say that the letter was already guessed.
		if guess.include?(another_guess)
			puts "The letter #{another_guess} was already guessed. Try again!"
			#runs the 'placeholders' method to check for a correct guess
		else 
			puts "The secret word has #{another_guess} in it!"
			guess = guess + another_guess
			scramble = word_game.guess_word(word, guess)
			p scramble
		end
		#if there are no more '-' to replace the game is over and the use won
		if (scramble.include? ('*')) == false
			puts "Yay! You guessed the secret word!"
			break
		end
	#else add 1 to the wrong guess counter
	else
		puts "the secret word does not have #{another_guess} in it, maybe you shold give up...."
		wrong_guess += 1
		#and if the amount of guesses = the number of wrong guesses you have then then the game is over and the user loses.
		if wrong_guess == guesses
			puts "You have have reached you guess limit. Game Over! hahahaha!"
			break
		else
			scramble = word_game.placehoders(word, guess)
			p scramble
		end
	end 
end 



