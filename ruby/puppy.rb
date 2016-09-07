#CLASS -------------------------
#Puppy

# CHARACTARISTICS (ATTRIBUTES)--
# Name: varies
# Breed: varies

# BEHAVIOR (METHODS) -----------
# Fetch
# Walk
# Shakes your hand

class Puppy

	def initialize(name,breed)
		@name = name
		@breed = breed
	end 

	def fetch(object)
		puts "#{@name}, the #{@breed} fetches the #{object}."
	end 

	def walk
		puts "#{@name} goes on a walk."
	end 

	def shakes_hand(person)
		puts "#{@name} shakes #{person}'s hand" 
	end 


end 

puppy = Puppy.new("Molly","French Bulldog")
puppy.fetch("ball")
puppy.walk 
puppy.shakes_hand("Simon")
