# module Shout

#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#     words + "!!!" + " :)"
#   end

# end

# puts Shout.yell_angrily("I hate you")
# puts Shout.yell_happily("I love you")

module Shout

  def yell_happily(words)
    words + "!!!" + " *spirit fingers*"
  end

end

class Cheerleader
	include Shout
end 

class Singer
	include Shout
end 

cheerleader = Cheerleader.new
puts cheerleader.yell_happily("Raw, team, raw")

singer = Singer.new 
puts singer.yell_happily("You know you make me want to shout")
