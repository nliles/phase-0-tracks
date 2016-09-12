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
	attr_reader :guess_word, :word, :guess_count, :chances
	attr_accessor :guess
	
	def initialize(word)
		@word = word.downcase 
		@guess_word = " _" * word.length 
		@chances = word.length
		@guess_count = 0
		@guess = guess

   end 

   def user_guess(guess)
   	   @guess = guess.split('')
   	   user_guess.each do |x|
   	   if @word.include?(x)
   	   	print x 
   	   else 
   	   	print " _"
      end 
end 
end 
end

puts "Enter a word for player2 to guess:"
entered_word = gets.chomp
game = Word_game.new("#{entered_word}")
puts ""
until game.guess_count == game.chances 
puts "Player2: Guess word:"
inputted_guess = gets.chomp
game.user_guess("#{inputted_guess}")
game.guesses += 1
end 