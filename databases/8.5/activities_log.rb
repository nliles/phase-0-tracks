require 'sqlite3'

$db = SQLite3::Database.new("exercise.db")
$db.results_as_hash = true

create_activity_table = <<-SQL
  CREATE TABLE IF NOT EXISTS activities(
    id INTEGER PRIMARY KEY,
    activity VARCHAR(255)
  )
SQL
$db.execute(create_activity_table)


 create_activity_log = <<-SQL
  CREATE TABLE IF NOT EXISTS activities_log(
    id INTEGER PRIMARY KEY,
    activity_id INTEGER,
    activity_date VARCHAR(255),
    activity_duration INTEGER,
    FOREIGN KEY (activity_id) REFERENCES activities(id)
  )
SQL
$db.execute(create_activity_log)


def include_activity(db, activity)
   activities_list = []
   $db.execute("SELECT activity FROM activities").each do |x|
   activities_list << x['activity'].downcase
  end
    activities_list.include?(activity) ? true : false
end


def add_activity(db, activity)
  if !include_activity(db, activity)
  $db.execute("INSERT INTO activities (activity) VALUES (?)",[activity])
  end
end

<<<<<<< HEAD
<<<<<<< HEAD


def view_activities
  activities = $db.execute("SELECT * FROM activities;")
    activities.each do | activity |
      puts "#{activity['id']}. #{activity['activity']}"
    end
end
=======
def view_activities
	activities = $db.execute("SELECT * FROM activities;")
	activities.each do |activity|
		puts activity
	end 
end 
>>>>>>> d0f127e9e5c3d195add60264c352c7f4f1844633
=======

def view_activities
  activities = $db.execute("SELECT * FROM activities;")
    activities.each do | activity |
      puts "#{activity['id']}. #{activity['activity']}"
    end
end
>>>>>>> c85b9bee770c3aec47e63268ea1b541d61a9a7f9


def add_activity_log(db,activity_id, activity_date, activity_duration)
 	$db.execute("INSERT INTO activities_log (activity_id, activity_date, activity_duration) VALUES (?,?,?)",
 		[activity_id, activity_date, activity_duration])
end

def view_activities_log
  activities_log = $db.execute("SELECT * FROM activities_log;")
    activities_log.each do |log|
      puts ""
      puts "Activity input:"
      puts "#{log['id']}, #{log['activity_id']}, #{log['activity_date']}, #{log['activity_duration']}"
    end
end

add_activity($db, "Yoga")
add_activity($db, "Running")
add_activity($db, "Hiking")
add_activity($db, "Cycling")
add_activity($db, "Cross Fit")
view_activities
view_activities_log

puts "Would you like to input an activity:"
input = gets.chomp 
until input == "no"

puts "Please select activity (enter activity id number)"
activity_id = gets.to_i
puts "Please enter date:"
activity_date = gets.chomp
puts "Please enter duration:"
activity_duration = gets.chomp

add_activity_log($db, "#{activity_id}","#{activity_date}","#{activity_duration}")

puts "Would you like to input another activity?"
input = gets.chomp
end 









