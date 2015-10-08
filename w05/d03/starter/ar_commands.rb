require_relative "moma"

class Artist < ActiveRecord::Base
	a = Artist.new
	a.name = 'Vincent Van Gogh'
	a.nationality = 'Dutch'
	a.save

	a = Artist.new
	a.name = 'Pablo Picasso'
	a.nationality = 'Spanish'
	a.save

	a = Artist.new
	a.name = 'Albrecht Altdorfer'
	a.nationality = 'German'
	a.save


	# Artist.create (name:'Vincent Van Gogh')
	# end
	# Artist.create (name:'Pablo Picasso')
	# end
	# Artist.create (name:'Albrecht Altdorfer')
	# end
end

class Painting < ActiveRecord::Base
	# Painting.create (title:'Starry Night',artist_id:1)
	# end
	# Painting.create (title:'Guernica',artist_id:2)
	# end
	# Painting.create (title:'The Battle of Alexander')
	# end

	p = Painting.new
	p.title = 'Starry Night'
	p.artist_id = 1
	p.save

	p = Painting.new
	p.title = 'Guernica'
	p.artist_id = 2
	p.save

	p = Painting.new
	p.title = 'The Battle of Alexander'
	p.artist_id = 3
	p.save

	p = Painting.new
	p.title = 'Saltimbanques'
	p.artist_id = 2
	p.save

	p = Painting.new
	p.title = 'The Battle of Alexander'
	p.artist_id = 3
	p.save

	p = Painting.new
	p.title = 'The Battle of Alexander'
	p.artist_id = 3
	p.save

	p = Painting.new
	p.title = 'The Battle of Alexander'
	p.artist_id = 3
	p.save
	
	p = Painting.new
	p.title = 'The Battle of Alexander'
	p.artist_id = 3
	p.save
end
