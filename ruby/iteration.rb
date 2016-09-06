def release_1
places = ["France", "Egypt", "Spain", "NYC"]
travel_destination = {
	"France" => "1",
	"Egypt" => "2",
	"Spain" => "3",
}
 puts "BEFORE: " 
 puts places
  places.each do |item|
      puts "AFTER :" 
      puts item.swapcase

  end	
  puts "BEFORE: "  
  puts places
  places.map do |item|
	puts "Location:  "+"#{item}"
  end
  
  puts "BEFORE: " 
  puts travel_destination
  travel_destination.each do |key, value|
      puts key.upcase
      puts value.downcase

  end

end

release_1

#release 2

def number_counter(array)
 array.map do |number|
 	if (number % 2 == 0)
 		puts "#{number} IS EVEN! "
 	else 
 	    puts "#{number} IS ODD!"
 	end    	
end
end 

number_counter([1,2,3,4,5,6,7,8,9,10])   	

def ages(hash)
new_hash = { }	
hash.each do |key, value|
  if value > 5
  	new_hash.merge!(key => value) 
  end
 end  	
  puts new_hash
end	
   
 puts ages({
 	"Amy" => 5,
 	"Sally" => 8,
 	"Jason" => 9,
 	"Elizabeth" =>10,
 	"Mary" => 2
 }
)

def method_3(hash)
new_hash={}
hash.each do |key, value|
  if  key == "basketball"
  	new_hash.merge!(key => value)
  end	
 end
 puts new_hash	
end	


method_3( {
 	"basketball" => "Brenda",
 	"baseball" => "Joe",
 	"football" => "John",
 	"lacrosse" => "Lawrence"
 }
 )
 



def alphabet(hash)

hash.delete_if {|key, value| value > 500 }
puts hash

end

alphabet(hash= {
	"cat" => "cat".sum,
	"dog" => "dog".sum,
	"violin" => "violin".sum,
}
)

