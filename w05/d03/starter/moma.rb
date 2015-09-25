require 'active_record'
# require 'pry'

ActiveRecord::Base.establish_connection(
  adapter: "postgresql",
  host: "localhost",
<<<<<<< HEAD
  username: "robertweilbaecher",
=======
  username: "matthewduncan",
>>>>>>> 05c93f6e2f302571c6cea6ef8dd1d510ebf2f371
  password: "",
  database: "moma_db"
)

class Artist < ActiveRecord::Base
  has_many :paintings
end

class Painting < ActiveRecord::Base
  belongs_to :artist
end

# binding.pry

