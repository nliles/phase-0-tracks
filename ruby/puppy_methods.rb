class Puppy

  def initialize
    puts "Initializing a new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
  end

  def speak(number)
    puts "Woof!!! "*number
  end

  def roll_over
    puts "*Rolls over*"
  end

  def dog_years(human_year)
    puts human_year/7
  end
  
  def jump(height)
    puts "Our dog can jump #{height} feet."
  end


end

puppy = Puppy.new
puppy.fetch("ball")
puppy.speak(3)
puppy.roll_over
puppy.dog_years(40)
puppy.jump(5)