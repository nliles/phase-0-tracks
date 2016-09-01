def calculator(num1,operator, num2)
if operator == '+'
    return num1 + num2
elsif operator == '-'
    return num1 - num2
elsif operator == '*'
    return num1 * num2
elsif operator == '/'
    return num1 / num2
else 
	puts "invalid entry"
end
end

# puts calculator(5,'+',4)
# puts calculator(10,'-',3)
# puts calculator(1,'*',3)
# puts calculator(6,'/',3)

puts "Would you like to do a calculation (Answer yes or type quit)?"
input = gets.chomp 
array = []
until input == "quit"
puts "Select a number:"
num1 = gets.to_i
puts "Select an operator:"
operator = gets.chomp
puts "Select a number:"
num2 = gets.to_i
puts "#{calculator(num1,operator,num2)}"
array << "#{num1} #{operator} #{num2} = #{calculator(num1,operator,num2)}"
puts "Would you like to do a calculation (Answer yes or type quit)?"
input = gets.chomp 
end 
array 
calculations = array.count
puts "#{calculations} calculations performed!"
puts array 