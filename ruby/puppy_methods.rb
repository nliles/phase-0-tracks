class Puppy
  def initialize
  	puts "Initializing new puppy instance ..."
  end
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  def speak(n)
  	puts "woof " * n
  end
  def rollover
  	puts "*roll over*"
  end
  def dog_years(n)
  	n / 7
  end 
  def bite(name)
  	puts "bite #{name}"
  end 
end

puts Puppy.new.fetch("ball")
puts Puppy.new.speak(9)
puts Puppy.new.rollover
puts Puppy.new.dog_years(30)
puts Puppy.new.bite("Natalie")


class Computer
def initialize
	puts "Booting up computer..."
end
def run_program(program)
	puts "Run #{program}"
end
def delete(file)
	puts "Delete #{file}"
end

end

computers = []
50.times do |x|
	computers << Computer.new
end 

p computers.length

computers.each do |computer| 
	computer.run_program("Puppy.rb")
	computer.delete("Puppy.rb")
end 










