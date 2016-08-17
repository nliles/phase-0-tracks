

def alias_method
	array= []
	puts "Enter your name:"
	name = gets.chomp


while name != "quit"
	    split_name = name.split 
	    firstname=split_name.first.gsub!(/[aeiouyz]/, "a" => "e", "e" => "i", "i" => "o", "o" => "u", "u" => "a","z" => "b")
	    lastname=split_name.last.gsub!(/[aeiouz]/, "a" => "e", "e" => "i", "i" => "o", "o" => "u", "u" => "a","z" => "b", "b" => "c")
	    new_name = "#{lastname} #{firstname}"
	    array << new_name
	    puts "#{name} is #{new_name}"
	    puts "Enter your name again or type quit"
	    name = gets.chomp
end
p array 
end 

alias_method