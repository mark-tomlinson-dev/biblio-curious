require_relative 'methods'

bookshelf = []

def add_to_bookshelf(book_title, book_shelf)
	book_shelf << book_title 
end 

bookshelf = add_to_bookshelf('War and Peace', bookshelf)

# Method test for add_to_bookshelf. Only one item should push to bookshelf array
p bookshelf.length

# Method test for add_to_bookshelf. Value 'War and Peace' should push to bookshelf array
p bookshelf

