# require 'googlebooks' # unless you're using Bundler

# books = GoogleBooks.search('The Great Gatsby', {:page => 100})
# # p first_book = books.first



# p first_book = books.first 

# p first_book.title 

# ('subject:german literature', {:count => 10})
# first_book = books.first
# first_book.title
# books.each do |b|
# 	# puts b.title
# 	puts b.title 
# 	# puts b.published_date 
# 	# puts b.description
# end 




# "130 Million Books"
# See what the world of books has to offer
# Get curious - you never know where it might lead
# Random encounters have been limited 


require 'googlebooks' # unless you're using Bundler

books = GoogleBooks.search('subject', {:count => 1, :page => 7})

# books.each do |b|
# 	puts b.title 
# 	puts b.authors
# 	# puts b.description 
# 	# puts "========"
# 	# puts b.preview_link
# 	# puts b.image_link  
# 	# puts "========"
# 	puts b.description 
# 	# puts b.authors 
# 	# puts b.image_link(:zoom => 3)
# end 




# b.title = book 
# selection = []

# selection >> book 

# p selection

# p first_book.authors #=> 'F. Scott Fitzgerald'
# p first_book.isbn #=> '9781443411080'
# p first_book.image_link(:zoom => 6) #=> 'http://bks2.books.google.com/books?id=...'




# first_book.authors #=> 'F. Scott Fitzgerald'
# first_book.isbn #=> '9781443411080'
# first_book.image_link(:zoom => 6) #=> 'http://bks2.books.google.com/books?id=...'

# # puts first_book.authors 

# puts first_book.title



# while exit_program == false





# puts "Welcome to Biblio Curious! What would you like to do today?"
# puts "1. Exercise my curiosity" 
# puts "2. View my saved curiosities"
# puts "3. Exit"
# print "> "

# selection = gets.chomp.to_i

# if selection == 1
# 	puts "What are you feeling curious about?"
# elsif selection == 2
# 	puts "Here are your saved books"
# elsif seleciton == 3
# 	puts "Thanks for stopping by"


books = GoogleBooks.search('intitle:trousers', {:count => 1, :page => 9})

books.each do |b|
		puts b.title 
		# puts b.authors
		puts b.description 
		# puts "========"
		# puts b.preview_link
		# puts b.image_link  
		# puts "========"
		# puts b.description 
		# puts b.authors 
		# puts b.image_link(:zoom => 3)
	end 
		

	# Need to return results only with descriptions!!!!

