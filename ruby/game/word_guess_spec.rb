require_relative 'word_guess'

describe WordGuess do
	let(:hangman) {WordGuess.new('davis')}
	
	it 'returns secret word do' do
		expect(hangman.get_answer('davis')).to eq 'davis'
	end
	
end