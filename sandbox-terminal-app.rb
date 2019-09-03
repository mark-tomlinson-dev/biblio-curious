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


require 'googlebooks' # unless you're using Bundler

books = GoogleBooks.search('reunion island', {:count => 5, :page => 1})

books.each do |b|
	puts b.title 
	# puts b.authors
	# puts "========"
	# puts b.preview_link
	# puts b.image_link  
	# puts "========"
	# puts b.description 
	# puts b.authors 
end 


# p first_book.authors #=> 'F. Scott Fitzgerald'
# p first_book.isbn #=> '9781443411080'
# p first_book.image_link(:zoom => 6) #=> 'http://bks2.books.google.com/books?id=...'




# first_book.authors #=> 'F. Scott Fitzgerald'
# first_book.isbn #=> '9781443411080'
# first_book.image_link(:zoom => 6) #=> 'http://bks2.books.google.com/books?id=...'

# # puts first_book.authors 

# puts first_book.title