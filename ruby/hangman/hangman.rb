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

	attr_reader :guess_counter, :blank_spaces, :already_guessed, :word_to_guess_array
	attr_accessor :guess

	def initialize
		@already_guessed = []
		@guess_counter = nil
		@blank_spaces = []
		@guess = nil
		@word_to_guess_array = nil
		puts "Welcome to hangman!"
	end
	
	def word_to_guess(word)
	  i = 0
	  @guess_counter = word.length*2
	    while i < word.length
	       @blank_spaces << "_"
	        i += 1
	    end
	  @word_to_guess_array = word.split("")
	end
	
	def guesser(letter)
	    	  	if letter == @word_to_guess_array.join
	    	  		@blank_spaces.replace(@word_to_guess_array)
	    	  	elsif
	    			@already_guessed.include?(letter)
	    	    puts "Already guessed, try again!"
	    	    guesser(gets.chomp.downcase)
	    	  	else
	      	  @guess = letter
	   		  @already_guessed << letter
	      	  i=0
		      	  while i < @word_to_guess_array.length
		      	    if @guess == @word_to_guess_array[i]
		      	      @blank_spaces[i] = @guess
		      	    end
		      	    i += 1
		      	  end
		      	  @guess_counter -= 1 
		      	  @blank_spaces
		      	end
		      	letter = ""
	end

	def end_message
		if @word_to_guess_array.sort == @blank_spaces.sort
	  		p @blank_spaces
	  		puts "Congratulations! You win! The word is #{@blank_spaces.join}!"
	  	elsif @guess_counter == 0
	  		puts "You're a looooooooooooser. Ha ha ha. By the way, the word was '#{@word_to_guess_array.join},' dummy."
	  	end
	end


end
hangman= Hangman.new
puts "Enter word to guess!"
hangman.word_to_guess(gets.chomp.downcase)
system("cls")
until ((hangman.word_to_guess_array.sort == hangman.blank_spaces.sort)||hangman.guess_counter == 0)
p hangman.blank_spaces
puts "Guess a letter or word! #{hangman.guess_counter} guess(es) remaining!"
letter = gets.chomp.downcase
hangman.guesser(letter)
end
hangman.end_message
