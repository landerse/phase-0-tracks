=begin
initialize method:
array for guesses, to track which have already been guessed
guess counter variable
array for blank spaces

method one:
Take word
Split word into letters
	Allow as many guesses as there are letters
	Make blank spaces for as many letters
	

Method two:
Take letter or string
see if exists in word to guess array
Update the blank spaces with guessed letters
Repeat guesses are ignored

Method three:
Congratulate if win, taunt if lose
=end

class Hangman

	attr_reader :guess_counter, :blank_spaces, :already_guessed, :word_to_guess
	attr_accessor :guess

	def initialize
		@already_guessed = []
		@guess_counter = nil
		@blank_spaces = []
		@guess = nil
		puts "Welcome to hangman!"
	end
	
	def word_to_guess(word)
	  i = 0
	  @guess_counter = word.length
	    while i < word.length
	       @blank_spaces << "_"
	        i += 1
	    end
	  @word_to_guess = word.split("")
	end

	def guesser
		  	until ((@word_to_guess.sort == @blank_spaces.sort)||@guess_counter == 0)
		  	p @blank_spaces
		  	puts "Guess a letter! #{@guess_counter} guess(es) remaining!"
		  	letter = gets.chomp.downcase
	    	  	if letter == @word_to_guess.join
	    	  		@blank_spaces.replace(@word_to_guess)
	    	  	elsif
	    			@already_guessed.include?(letter)
	    	    puts "Already guessed, try again!"
	    	    guesser
	    	  	else
	      	  @guess = letter
	   		  @already_guessed << letter
	      	  i=0
		      	  while i < @word_to_guess.length
		      	    if @guess == @word_to_guess[i]
		      	      @blank_spaces[i] = @guess
		      	    end
		      	    i += 1
		      	  end
		      	  @guess_counter -= 1 
		      	  @blank_spaces
		      	end
		      	letter = ""
	      	end
	end
end
