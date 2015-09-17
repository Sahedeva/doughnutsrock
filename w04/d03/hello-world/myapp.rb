# myapp.rb
require 'sinatra'
require 'sinatra/reloader'

# Each of these 3 blocks of code is referred to as an "action"
# This action describes what should happen when users submit a GET request to the root url of our site ('localhost:4567/')
get '/' do

  # The 'erb' method is what tells Sinatra to go find the index.erb file, process the Ruby inside of it, and return an HTML page
  # We always put the 'erb' command at the bottom of the action, as this should always be the final output of the action
  erb :index
end

# This action is for a GET request to 'localhost:4567/something'
get '/something' do
  'This is a different page'
end

# This action is for a GET request to 'localhost:4567/hello/:name'
# The ':name' part of the URL is a *placeholder* (kind of like an argument passed to a function)
# So you could go to 'localhost:4567/hello/sean' or 'localhost:4567/hello/mike', and this URL would work
get '/hello/:name' do

  # The 'params' hash that we're using below is a special hash given to us by Sinatra
  # It contains any dynamic user input, including named URL parameters like we have above, query string parameters, or form data
  @reversed_name = params['name'].reverse
  erb :hello
end