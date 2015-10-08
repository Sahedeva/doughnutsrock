require 'httparty'
require 'json'

url = 'http://api.giphy.com/v1/gifs/random?api_key=dc6zaTOxFJmzC&tag=alien'

response = HTTParty.get(url)

buffer = response.body
result = JSON.parse(buffer)

puts result