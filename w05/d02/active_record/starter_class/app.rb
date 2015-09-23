require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, 'postgres://mikedang@localhost/world_dev'

class City < ActiveRecord::Base

end

get '/' do
	"hello"
end

get '/cities/new' do 
	erb :cities_new
end

post '/cities/new' do 
	fake_id = Random.rand(6000)
	fake_id += 6000 

	# Method 1: Object not saved until you call .save
	# city = City.new
	# city.id = fake_id
	# city.name = params[:name]
	# city.population = params[:population]
	# city.district = params[:district]
	# city.countrycode = params[:countrycode]
	# city.save

	# Method 2: Object saved without having to call .save
	City.create(id: fake_id, name: params[:name], population: params[:population], district: params[:district], countrycode: params[:countrycode])

	redirect '/cities/new'
end

get '/cities' do 
	# select * from cities
	@cities = City.all

	erb :cities
end

put '/cities/:city_id' do 
	city = City.find(params[:city_id])

	# Method 1 - Saves when explicitly calling .save
	# city.name = params[:name]
	# city.population = params[:population]
	# city.district = params[:district]
	# city.countrycode = params[:countrycode]
	# city.save

	# Method 2 - Saves with one call
	city.update(name: params[:name], population: params[:population], district: params[:district], countrycode: params[:countrycode])

	redirect "/cities/#{params[:city_id]}"
end

delete '/cities/:city_id' do 
	city = City.find(params[:city_id])
	city.destroy

	redirect '/cities'
end

get '/cities/name/:name_param' do 
	# The following two lines are equivalent, just different ways of inputting the hash
	#@cities = City.where(:name => params[:name_param])
	@cities = City.where(name: params[:name_param])

	erb :cities
end

get '/cities/:id' do 
	# .find only returns one object, search by primary key
	@city = City.find(params[:id])

	erb :city
end






