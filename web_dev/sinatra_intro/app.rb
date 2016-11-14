# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /(home directory '/')
#localhost.8888/?name=Jen&age=35
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
#localhost.888/?about/Jen
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end
#localhost.888/?lynda/loves/robert
get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

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


get '/contact/:address' do
  address = params[:address]
  "This is an email adress: #{address} and they love to visit your website!!"
end

#output : http://localhost:9393/contact/plants@gmail.com
#This is an email adress: plants@gmail.com and they love to visit your website!!

get '/great_job' do
  name = params[:name]
  if name 
    "Good job #{name}!"
  else
    "Good job!"
  end
end
# output : http://localhost:9393/great_job?name=yaritza
# Good job yaritza!
#   http://localhost:9393/great_job
# Good job!

get '/:num_1/:num_2' do 

  num_1 = (params[:num_1]).to_i
  num_2 = (params[:num_2]).to_i
  answer = num_1 + num_2
  answer.to_s
end

#output http://localhost:9393/1/2
#3




