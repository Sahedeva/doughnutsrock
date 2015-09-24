puts "Hello I am C-3PO, human-cyborg relations."
puts "What is your name, master?"
name = gets.chomp
puts "It is a pleasure to meet you, #{name}. Have you ever met a protocol droid before?"
answer = gets.chomp
puts "#{answer}? How interesting, for someone from around these parts."
puts "I'm terribly sorry for prying, but you don't by any chance go by the alias of Obi-Wan Kenobi, do you? (Answer \"I do\" or \"I don't\")"
answer = gets.chomp
if answer.downcase == "i do"
	puts "Oh, marvelous! Simply marvelous! Say hello to R2-D2; he's been looking all over for you."
else
	puts "I've really enjoyed speaking with you, #{name}, but if you'll please excuse me, I have to help my friend find someone named Obi-Wan Kenobi."
	puts "Enter your favorite farwell"
	answer = gets.chomp
	puts "#{answer} to you too."
	puts "Well R2, I suppose we'll just have to keep looking."
	puts "R2-D2: (Agreeable droid noises)"
end


