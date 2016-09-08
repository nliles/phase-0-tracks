class Santa
  attr_accessor :age, :gender
  attr_reader :reindeer_ranking, :ethnicity

  def initialize(gender,ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end
  
  #Getter and Setter methods which are replaced by attr_reader/attr_accessor:
  # def ethnicity
  #   @ethnicity
  # end 

  # def gender=(new_gender)
  #   @gender=new_gender
  # end 

  def celebrate_birthday
    new_age = age.to_i + 1 
    puts "Santa turns #{new_age}. Happy birthday, santa!"
  end

  def gets_mad_at(reindeer)
        i = reindeer_ranking.index(reindeer)
        reindeer_ranking << reindeer_ranking[i]
        reindeer_ranking.delete_at(i)
        puts "Santa's new reindeer ranking:"
        puts reindeer_ranking
        puts "Santa says: 'Bad #{reindeer_ranking[-1]}!'"
    end


  def speak(holiday_greeting)
    puts "Santa says: Ho, ho, ho! #{holiday_greeting}!!"
  end 

  def eat_milk_and_cookies(cookie)
    puts "Santa says: 'That was a good #{cookie} cookie!'"
  end
  
  
  def age
    @age
  end 

end








