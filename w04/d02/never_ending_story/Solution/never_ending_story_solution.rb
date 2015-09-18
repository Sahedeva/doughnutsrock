story = [
  'Fry is born without a delta brainwave',
  'As a result, Fry is cryogenically frozen until 2999',
  'In the future, Fry works on a spaceship',
  'The spaceship hits a wormhole and crashes in 1941 Roswell, NM',
  'Fry encounters his grandmother, then inadvertently sires his father',
  "Fry's best friend becomes a robot named Bender when they meet in a suicide booth",
  'Fry falls in love with Leela, a one eyed mutant from the sewers',
  'Fry and Leela save Bender from robot hell after his addiction to electricity'
]

# Initialize the variable "index" equal to zero 
index = 0;

# while loop (In this case I am using while true which essentially creates an infinite loop until the break condition is met)
while true
	# puts the first item in the array
  	puts story[index]
  	# changes the index variable value 
  	# Why this code works: index starts at 0, (0+1) % 8(story.length)...  8 goes into 1 0 times therefore 1 is the remainder.... 8 goes into 2 0 times therefore two is the remainder... etc, etc, up until 8 goes in to 8 1 time with a remainder of 0 therefore index gets reset back to 0
  	index = (index + 1) % story.length

  	# Puts the question should we continue
  	puts "Should we continue? (y/n)"
  	# Sets the variable "response" to the users answer
  	response = gets.chomp
  	# If the response is "y" or "Y" go back to the top and run the loop again.  If the response is anything else break the loop
  	break if response.downcase != 'y'
end
