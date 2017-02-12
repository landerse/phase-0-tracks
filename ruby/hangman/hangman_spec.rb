require_relative 'hangman'

describe Hangman do
	let(:hangman) {Hangman.new}

	it "takes string and splits into char array" do
		expect(hangman.word_to_guess("apple")).to eq ['a','p','p','l','e']		
	end
end