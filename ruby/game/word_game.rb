# Design a word guessing game that takes input from two users
# User1 enters word to be guessed.
# User2 tries to guess that word.
# All matching letters from the guessed word will be displayed.
# Chances are equal to the length of the word to be guessed.
# Game ends when chances are equal to zero.
# The word to be guessed is compared to the guessed word to compare.
# Matching letters are displayed.
# If word is not guessed in the number of allowed tries, user2 loses.
# If word is guessed, user1 wins and word is displayed.


class Word_game
	attr_reader :word
	attr_accessor :guess, :chances, :is_over
	
	def initialize(word)
		@word = word
		@chances = word.length
		@guess = guess
		@display = ''
		@is_over = false
    end 
   
    def display_word
       display = ''
       @word.chars { |letter| display +=  ' _' }
       display
       puts 'Guess the word:'+ display
     end 

     
    def guess_word(guess)
	display = ''
  	@word.chars { |letter| 
    display += (guess.include? letter)? letter : ' _' }
    puts display
    if display.include?(' _')
    	@is_over  = false
    else 
    	@is_over = true
    	puts "You guessed it!"
    end
   end
end


puts "Enter a word for player2 to guess:"
entered_word = gets.chomp
game = Word_game.new("#{entered_word}")
game.display_word

until game.chances == 0 || game.is_over == true
puts "#{game.chances} chances left."
puts "Player2: Guess word:"
inputted_guess = gets.chomp
game.guess_word("#{inputted_guess}")
game.chances -= 1
end 


	