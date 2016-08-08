puts "How many employees are there?"
employees = gets.to_i
until employees == 0 

puts "What is your name?"
name = gets.chomp 

if name == "Drake Cula" 
   vampire_name = true
elsif name == "Tu Fang"
   vampire_name = true
else
   vampire_name = false
end

puts "How old are you?"
age = gets.chomp 
age=age.to_i 
puts" What year were you born?"
year = gets.chomp 
year=year.to_i

if (2016-year.to_i) == age.to_i
	correct_age = true 
else 
	correct_age = false 
end 

puts "Do you want garlic bread?"
garlic_bread = gets.chomp 

if garlic_bread == "yes"
	likes_garlic = true
else garlic_bread == "no"
	likes_garlic = false 
end 

puts "Do you want health insurance?"
wants_insurance = gets.chomp 
if wants_insurance == "yes"
   wants_insurance = true 
else wants_insurance == "no"
	wants_insurance = false
end

allergies = ''  
puts "List all allergies:"
allergies = gets.chomp 
until allergies == "done"

if allergies == "sunshine"
break
else allergies == "done"
break
end 
end 

if vampire_name 
	answer1 = "Definitely a vampire"
	print answer1
elsif allergies == "sunshine"
    answer2 = "Probably a vampire"
    print answer2
elsif correct_age && (likes_garlic || wants_insurance)
	answer3 = "Probably not a vampire"
	print answer3
elsif !correct_age && !likes_garlic && !wants_insurance
    answer4 = "Almost certainly a vampire"
    print answer4
elsif !correct_age && (!likes_garlic || !wants_insurance)
    answer5 = "Probably a vampire"
    print answer5
else 
	answer6 = "Results inconclusive"
	prints answer6
end
employees -= 1
end
