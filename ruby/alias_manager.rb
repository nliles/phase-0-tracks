
array = []
name = ''

while name != "quit"
     puts "What's your name?"
     name = gets.chomp
	    split_name = name.split 
	    firstname=split_name.first.gsub!(/[aeiouyz]/, "a" => "e", "e" => "i", "i" => "o", "o" => "u", "u" => "a","z" => "b")
	    lastname=split_name.last.gsub!(/[aeiouz]/, "a" => "e", "e" => "i", "i" => "o", "o" => "u", "u" => "a","z" => "b", "b" => "c")
	    new_name = "#{lastname} #{firstname}"
	    array << new_name
	    p array 
	    puts "#{name} is #{new_name}"
break if name == "quit"
end