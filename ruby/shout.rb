#module Shout
  # we'll put some methods here soon, but this code is fine for now!
#end

#module Shout
#  def self.yell_angrily(words)
#    words + "!!!" + " :("
 # end
#end

#module Happy
 # def self.yell_happily(words)
 #   words + "!!!" + " :-)"
 # end
#end

#puts Shout.yell_angrily("Grrrrr, I'm so angry!")
#puts Happy.yell_happily("I love everyone!")


module Shout
  def noise(level)
    puts "I'm going to scream so #{level} ..."
  end
end

class Loud
	include Shout
end 

class Soft
	include Shout
end 


loud = Loud.new
loud.noise("crazy loud")

soft = Soft.new
soft.noise("softly")