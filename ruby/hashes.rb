#Create a hash labeled interior design
#Prompt user for input, asking name, age, number of children, apartment/house, number of bedrooms, decor theme
#Add all user input into the hash as key value pairs
#Ask user if they would like to update an item
#Allow them to enter item and update
#Update hash with new information
#Print hash

Interior_design = {}

puts "What's your name?"
Interior_design[:name] = gets.chomp 
puts "How old are you?"
Interior_design[:age] = gets.to_i 
puts "How many children do you have?"
Interior_design[:children] = gets.to_i 
puts "Apartment or house?"
Interior_design[:home] = gets.chomp
puts "How many bedrooms are in your home?"
Interior_design[:bedrooms] = gets.chomp
puts "What is your decor theme?"
Interior_design[:decor_theme] = gets.chomp 


puts "Would you like to update any information?"
update = gets.chomp

	if update == "yes"
	 puts "What would you like to update (name, age, children, home, bedrooms,decor_theme)?"
     new_key = gets.chomp.to_sym

	 puts "Please enter your update:"
     new_value = gets.chomp     
     Interior_design[new_key] = new_value
     puts Interior_design
	
	else 
	puts Interior_design

end 