# def main_menu
# 	puts "Welcome to Biblio Curious! What would you like to do today?"
# 	puts "\n"
# 	puts "1. Exercise my curiosity" 
# 	puts "2. View my saved curiosities"
# 	puts "3. Exit"
# 	print "> "
# 	selection = gets.chomp.to_i
	
# 	case (selection)
# 	when 1
# 		puts "What are you feeling curious about?"
# 		print "> "
# 		search_term = gets.strip
# 			if search_term == nil
# 				puts "That is not a valid entry"
# 			end 
# 		true
# 	when 2
# 		puts "Here are your saved books: #{bookshelf}"
# 		true
# 	when 10
# 		puts "Thanks for stopping by"
# 		# exit
# 		false
# 	end
# end

# continue_menu = true

# while continue_menu
#  continue_menu = main_menu
# end


def google_books_api_search
	puts "\n"
	puts "What are you feeling curious about?"
	puts "\n"
	print "> "
	search_term = gets.strip
	if search_term == nil
		puts "That is not a valid entry. Please try again"
	end
	
	books = GoogleBooks.search(search_term, {:count => 5, :page => 1, :filter => 'partial'})
	puts "\n"
	puts "Here is what your curiosity turned up:"
	puts "\n"
	return books
end 

def display_google_books 
	books.each_with_index do |book, index|
		puts "#{index + 1} - #{book.title}"
	end
end 

def choose_a_book(books)
	puts "\n"
	print "> "
	puts "\n"
	book_index = gets.chomp.to_i - 1
	return books.to_a[book_index]
end 

def search_again_or_go_back_to_menu
	puts "\n"
	puts "Do any of these titles interest you?"
	puts "\n"
	puts "1. Yes"
	puts "2. No, I want to search again"
	puts "3. Take me back to the main menu"
	puts "\n"
	print "> "
	response = gets.chomp.to_i 
	if response == 1
		puts "\n"
		puts "Which title number?"
	elsif response == 2
		search
	else response == 3
		menu(bookshelf)
	end 
end 

def search(bookshelf)
	# this method searches the google books api
	books = google_books_api_search
	# displaying the list of 5 books, no return
	display_google_books
	# menu for searching again or choosing to pick a book
	search_again_or_go_back_to_menu
	# choose a book 
	book_chosen = choose_a_book(books)

	
	puts "\n"
	puts "Here is a bit of information to whet your appetite:"
	puts "\n"
	puts "Title: #{book_chosen.title}"
	puts "\n"
	puts "Author(s): #{book_chosen.authors}"
	if book_chosen.authors == nil
		puts "Oops there is no author information about this book!"
	end 
	puts "\n"
	puts "Description: #{book_chosen.description}"
	if book_chosen.description == nil 
		puts "Oops there is no further information about this book!"
	end
	puts "\n"
	puts "Publication Date: #{book_chosen.published_date}"
	if book_chosen.published_date == nil 
		puts "Oops there is no further information about this book!"
	end
	puts "\n"
	puts "What would you like to do now?"
	puts "\n"
	puts "1. Read a preview"
	puts "2. See the cover"
	puts "3. Save to my bookshelf"
	puts "4. Conduct a new search"
	puts "5. Exit"
	
	# title = book_chosen.title
	# author = book_chosen.authors
	# publication_date = book_chosen.published_date
	# description = book_chosen.description

	selection = gets.chomp.to_i 
	if selection == 1
		puts "\n"
		puts "Click here for preview: #{book_chosen.preview_link}"
		menu(bookshelf)
	elsif selection == 2
		puts "\n"
		puts "Click here to view cover: #{book_chosen.image_link(:zoom => 4)}"
		menu(bookshelf)
	elsif selection == 3
		bookshelf << book_chosen.title 
		puts "Your bookshelf has been updated"
		menu(bookshelf) 
			
			# puts "Would you like to return to the main menu?"
			# puts "1. Yes"
			# puts "2. No"
			# choice = gets.chomp.to_i 
			# 	if choice == 1
			# 		menu
			# 	if choice == 2
			# 		exit 
			# 	end 
		elsif selection == 4
			search
		else selection == 5
			puts "Thanks for dropping by!"
			exit 
		end  
end 






def sub_menu 
	puts "What would you like to do now?"
	puts ""
	book_index = gets.chomp.to_i - 1
	book_chosen = books.to_a[book_index]
	puts "\n"
	puts "Title: #{book_chosen.title}"
	puts "\n"
	puts "Description: #{book_chosen.description}"
		if book_chosen.description == nil 
			puts "Oops there is no further information about this book! Librarians are not as fastidious as you think..."
		end
	puts "\n"
	puts "Authors: #{book_chosen.authors}"
		if book_chosen.authors == nil
			puts "Oops there is no author information about this book! Librarians are not as fastidious as you think..."
		end 
end 



def display_bookshelf(bookshelf)
	puts "Here are your saved items:"
	bookshelf.each_with_index do |book, index|
		puts "#{index + 1}) #{book}"
	end
	sleep 5 
	menu(bookshelf)
end 


	


def menu(bookshelf)
	puts "\n"
	puts "Welcome to Biblio Curious! What would you like to do today?"
	puts "\n"
	puts "1. Exercise my curiosity" 
	puts "2. View my saved curiosities"
	puts "3. Exit"
	puts "\n"
	print "> "
	selection = gets.chomp.to_i
	
	case selection 
	when 1 
		search(bookshelf)
	when 2
		display_bookshelf(bookshelf)
	when 3 
		exit
	else 
		puts "You have made an invalid selection. Please enter a number from 1 to 3."
	end  
end 








