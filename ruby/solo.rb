# Class = Olympic Athlete
# 3 Attributes:
# -Name of athlete (input = string)
# -Athlete age (input = integer)
# -Type of sport (input = string)
# -Athlete Country (value = string)
# -Make sure that location is readable outside of the method and that name can be changed outside of the method

# Methods:
# -Initialize method 
# -Performs_skill method 
# -Train method 
# -Win_a_medal method

# Initialize method
# Arguments: name, age, sport, country
# Add location and make sure it is readable outside of the method

# train
# -Arguments: 1
# -Argument name: hours
# -input needed: number of training hours
# -print the result 

# perform_skill
# -Arguments: 1
# -Argument name: skill
# -input needed: skill to perform
# -get user input and pass through method
# -print the result 

# win_a_medal
# -Arguments names: color, event
# -Argument name: skill
# -input needed: color of medal won, medal event
# -get user input and pass through method
# -print the result 

# Prompt user for input:
# -Prompt user for each attribute of athlete
# -Store all attribute input into an array
# -Propt user for input to pass through Methods
# -Create a loop that created varous instances of olympic_athlete and breaks when user enters no to the question about creating a new athlete
# -Call each class method, using interpolation to pass user input through the method

# Print:
# -Print all array information and return of methods

class Olympic_athlete
	attr_reader :location  
	attr_accessor :name

	def initialize(name, age, sport, country)
		@name = name
		@age = age
		@sport = sport 
		@country = country
		@location = "Rio"
	end 

	def train(hours)
		@hours = hours
		puts "#{@name} trains for #{hours} hours a day in #{@location}"
	end 

	def performs_skill(skill)
		@skill = skill
		puts "#{@name} performs a #{skill}"
	end

	def win_a_medal(color,event)
		@color = color
		@event = event
		puts "#{@name} wins a #{color} medal in the #{event}! Go #{@name}!"
	end
end


olympic_athletes = []
names_array = []
age_array = []
sport_array = []
country_array = []

loop do
	puts "Would you like to create an athlete"
	input = gets.chomp
break if input =="no"

	puts "What is the name of your athlete?"
	name = gets.chomp
	names_array << name

	puts "How old is your athlete?"
	age = gets.to_i
	age_array << age

	puts "What sport does your athlete play?"
	sport = gets.chomp
	sport_array << sport

	puts "What country is your athlete from?"
	country = gets.chomp 
	country_array << country

	puts "how many hours does your athlete train?"
	hours = gets.to_i

	puts "What skill does your athlete perform?"
	skill = gets.chomp

	puts "What color medal does your athlete win(gold, silver, or bronze)?"
	medal = gets.chomp

	puts "What event does your athlete win the medal in?"
	event = gets.chomp


	names_array.length.times do |i|
	p olympic_athletes << Olympic_athlete.new(names_array[i], age_array[i], sport_array[i],country_array[i])
    end

	olympic_athletes.each do |olympic_athlete|
    olympic_athlete.train("#{hours}")
	end


	olympic_athletes.each do |olympic_athlete|
  	olympic_athlete.performs_skill("#{skill}")
	end

	olympic_athletes.each do |olympic_athlete|
 	olympic_athlete.win_a_medal("#{medal}", "#{event}")
	end
end







