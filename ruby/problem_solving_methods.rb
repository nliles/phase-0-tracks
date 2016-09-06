
#Release 0 

def search_array(array, number)
	index = 0
	while array[index] < array.length 
	array.each do |index|
		if index == number
	      return index
	    else 
	     nil
        end 
    end 
    index += 1
end 
end 

array = [1,2,3,4,5]
puts search_array(array,3)
puts search_array(array,30)

def fib_num(n)

  a = []
  array = []

  n.times do |num|
    if num==0
      a[num] = 0
    array << a[num]
    elsif num==1
      a[num] = 1
      array << a[num]
    else
      a[num] = a[num-1] + a[num-2]
      array << a[num]
    end  
  end
  puts array
end

puts fib_num(6)
