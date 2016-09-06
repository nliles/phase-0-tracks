
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


#Release 1
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


#Release 2

#Create a bubble sort method
#Define a method that will sort all numbers using a loop that breaks when every number has been sorted.
#Determine the length of the array and iterate over every index of the array.
#Determine which number or the array is the greatest and sort array in descending order.
#Compare every index of the array. Stop the loop when this is done.
#Print array when loop breaks.

def sort(array)
  n = array.length
  loop do
    sorted = false
    (n-1).times do |i|
    	
      if array[i] < array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        
       
    sorted = true
      end
    end

    break if not sorted
  end

  puts array
end

sort([20,15,6,7,8,3,1])