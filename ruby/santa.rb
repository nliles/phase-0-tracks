class Santa
   attr_reader :age
   attr_reader :ethnicity 
   attr_accessor :gender
   def initialize(gender, ethnicity)
       puts "Initializing Santa instance ..."
       @gender = gender
       @ethnicity = ethnicity
       @age = 0
       @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", 
        "Donner", "Blitzen"]
    end

    def celebrate_birthday(age)
        @age = age 
        new_age = age.to_i + 1
        puts "Santa turns #{new_age}!"
    end

    def speak
       puts "#{@ethnicity}, #{@gender} santa says Ho, ho, ho! Haaaappy holidays!"
    end

    def eat_milk_and_cookies(cookie)
       puts "#{@ethnicity}, #{@gender} santa says that was a good #{cookie}!"
    end

    def gets_mad_at(bad_reindeer)
        bad_reindeer.capitalize!
        i = @reindeer_ranking.index(bad_reindeer)
        @reindeer_ranking << @reindeer_ranking[i]
        @reindeer_ranking.delete_at(i)
        puts @reindeer_ranking
    end
end

santas = []
gender_array = []
ethnicities_array = []
puts "What's your gender?"
gender = gets.chomp
gender_array << gender
puts "what ethnicity are you?"
ethnicity = gets.chomp 
ethnicities_array << ethnicity
gender_array.length.times do |i|
p santas << Santa.new(gender_array[i], ethnicities_array[i])
puts "There are now #{santas.length} santa instances in the array"
end 


puts "Testing each Santa instance in the array to make sure he or she can speak ..."
santas.each do |santa|
  santa.speak
end

puts "Testing each Santa instance in the array to make sure he or she can eat milk and cookies ..."
santas.each do |santa|
  santa.eat_milk_and_cookies("oreo")
end

puts "Which reindeer are you mad at?"
bad_reindeer=gets.chomp
santas.each do |santa|
  santa.gets_mad_at("#{bad_reindeer}")
end

puts "How old are you?"
age = gets.to_i
santas.each do |santa|
  santa.celebrate_birthday("#{age}")
end







