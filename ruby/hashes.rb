results = ""
print "First name:"
first = gets.chomp
print "Last name:"
last = gets.chomp
print "Enter age:"
age = gets.to_i
print "Number of children:"
children = gets.to_i
print "Decor theme:"
decor_theme = gets.chomp

client_data = { first: first, last: last, age: age, children: children, decor_theme: decor_theme}
puts "#{client_data}"

puts "Do you need to update your decor theme?"
update = gets.chomp 
if update == "yes"
	update = true 
elsif update == "no"
    update = false 
else 
	puts "please repeat"
end 
until update == false
print "Decor_theme:"
decor_theme = gets.chomp
if decor_theme == "done"
  break
end

client_data = { first: first, last: last, age: age, children: children, decor_theme: decor_theme}
puts "#{client_data}"
end