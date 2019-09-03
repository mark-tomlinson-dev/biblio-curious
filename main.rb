require 'googlebooks'

puts "Welcome to Biblio Curious! What would you like to do today?"
puts "1. Exercise my curiosity" 
puts "2. View my saved curiosities"
puts "3. Exit"
print "> "

selection = gets.chomp.to_i

if selection == 1
	puts "What are you feeling curious about?"
	puts "> "
	search_term = gets.strip 
elsif selection == 2
	puts "Here are your saved books"
elsif seleciton == 3
	puts "Thanks for stopping by"
end 



books = GoogleBooks.search(search_term, {:count => 1, :page => 9})

books.each do |b|
	puts b.title 
	# puts b.authors
	# puts b.description 
	# puts "========"
	# puts b.preview_link
	# puts b.image_link  
	# puts "========"
	# puts b.description 
	# puts b.authors 
	# puts b.image_link(:zoom => 3)
end 



puts "What would you like to do now?"
puts "1. See another title"
puts "2. See description of current title"
puts "3. Save this title to your bookshelf"

selection = gets.chomp.to_i

if selection == 2
	puts search_result.description
end 

