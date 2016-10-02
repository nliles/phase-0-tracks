# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /

get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

#write a basic GET route to display contact page
get '/contact' do
  "Address: #{params[:address]}"
end

get '/great_job' do
  name = params[:name]
  if name
  "Great job #{name}!"
else
  "Great job"
end
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

get '/:int1/add/:int2' do
  "#{params[:int1].to_i + params[:int2].to_i}"
end


# get '/contact/:address' do 
#     address = params[:address]
#     "#{address}"
# end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

get '/students_campus/:campus' do 
  students = db.execute("SELECT * FROM students WHERE campus=?", [params[:campus]])
  response = ""
  students.each do |student|
    response << "Name: #{student['name']}<br>"
    response << "Campus: #{student['campus']}<br>"
    response << "<br>"
end
  response
end 

# Release 1 
# Is Sinatra the only web app library in Ruby? What are some others?
# Cubo, Padrino, Lotus

# Are SQLite and the sqlite3 gem your only options for using a database with Sinatra? What are some others?
# MangoDB, Couch DB, Cassandra

# What is meant by the term web stack?
# Collection of software required for web development






