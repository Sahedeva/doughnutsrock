require 'sinatra'
require 'sinatra/reloader'

enable :sessions

before do
	session[:shopping_cart] ||= []
end

get '/' do
	erb :index
end

# Display the form for adding an item
get '/add_item' do 
	# We use this view to display the form
	erb :add_item
end

get '/cart' do 
	@shopping_cart = session[:shopping_cart]

	erb :cart
end

# Add a new item
post '/add_item' do 
	session[:shopping_cart] << params[:item_name]

	@item_name = params[:item_name]

	erb :add_item_success
end 

# Clear the session
get '/restart' do
	session.clear

	redirect '/'
end



