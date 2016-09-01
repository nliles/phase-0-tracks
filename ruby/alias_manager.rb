# alias manager methods:
# Split last name and first name and reverse them.
# Downcase both names in case user provides both lowercase and capital letters.
# Store split and reversed name in a variable.
# Substitute letters for vowels and letters for consonants:
# -next vowel for vowels (example: e for a)
# -substitute next consonant for consonants (example: b for z)
# Prompt user for input
# Call split method and send user input through as a parameter
# Create a loop that breaks when user types quit.
# Create a hash (inputted_name => alias_name)
# Store all user input into hash.
# Print hash to dispaly information.


def alias_name(name)
	    split_name = name.split 
	    firstname=split_name.first.downcase
	    lastname=split_name.last.downcase
	    new_name = "#{lastname} #{firstname}"
	    final_name = new_name.tr('bcdfghjklmnpqrstvwxyz','cdfghjklmnpqrstvwxyzb').tr('aeiou','eioua')
end


		alias_storage = {}
		puts "Enter your name:"
		name = gets.chomp
	while name != "quit"
	    "#{alias_name(name)}"
	    puts "#{name} is #{alias_name(name)}"
	    alias_storage["#{name}"] = "#{alias_name(name)}"
	    puts "Enter your name again or type quit"
	    name = gets.chomp
end

puts alias_storage
