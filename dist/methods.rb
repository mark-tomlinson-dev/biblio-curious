def google_books_api_search
	puts "\n"
	puts "What are you feeling curious about?"
	puts "\n"
	print "> "
	search_term = gets.strip
	system "clear"
	if search_term == nil
		puts "That is not a valid entry. Please try again"
	end
	begin
		books = GoogleBooks.search(search_term, {:count => 5, :page => 1, :filter => 'partial'})
		if books.to_a.length == 0
			raise 
		end 
		puts "\n"
		puts "Here is what your curiosity turned up:"
		puts "\n"
		return books
	rescue 
		google_books_api_search
	end 
end 

def display_google_books(books)
	books.each_with_index do |book, index|
		puts "#{index + 1} - #{book.title}"
	end
end 

def what_would_you_like_to_do_next
	puts "What would you like to do now?"
	puts "\n"
	puts "1. Read a preview"
	puts "2. See the cover"
	puts "3. Save to my bookshelf"
	puts "4. Conduct a new search"
	puts "5. Take me back to the main menu"
	puts "\n"
	print "> "
end 

def choose_a_book(books)
	print "> "
	book_index = gets.chomp.to_i - 1
	`clear`
	return books.to_a[book_index]
end 

def search_again_or_go_back_to_menu(bookshelf)
	sleep 1
	puts "\n"
	puts "Do any of these titles interest you?"
	puts "\n"
	puts "1. Yes"
	puts "2. No, I want to search again"
	puts "3. Take me back to the main menu"
	puts "\n"
	print "> "
	response = gets.chomp.to_i
	puts "\n"
	if response == 1
		puts "Which title number?"
		puts "\n"
		puts "\n"
	elsif response == 2
		system 'clear'
		search(bookshelf)
	else response == 3
		menu(bookshelf)
	end 
end 

def add_to_bookshelf(book_title, book_shelf)
	book_shelf << book_title 
end 	

def search(bookshelf)
	# This method searches the google books api
	books = google_books_api_search
	# Displaying the list of 5 books, no return
	display_google_books(books)
	# Menu for searching again or choosing to pick a book
	search_again_or_go_back_to_menu(bookshelf)
	# Choose a book 
	book_chosen = choose_a_book(books)
	sleep 2 
	puts "\n"
	puts "Cool. Here is a bit of information about it:"
	puts "\n"
	puts "Title:".colorize(:magenta) + " #{book_chosen.title}"
	
	puts "\n"
	puts "Author(s):".colorize(:magenta) + " #{book_chosen.authors}"
	if book_chosen.authors == nil
		puts "Oops there is no author information available for this book!"
	end 
	puts "\n"
	puts "Description:".colorize(:magenta) + " #{book_chosen.description}"
	if book_chosen.description == nil 
		puts "Oops there is no description available for this book!"
	end
	puts "\n"
	puts "Publication Date:".colorize(:magenta) + " #{book_chosen.published_date}"
	puts "\n"
	if book_chosen.published_date == nil 
		puts "Oops there is no publication date available for this book!"
	end

	# puts out a menu for what we want to do next
	submenu_running = true
	while submenu_running
		what_would_you_like_to_do_next
		selection = gets.chomp.to_i 
		if selection == 1
			puts "\n"
			puts "Click here for preview " + "(command + double click):".colorize(:magenta) + " #{book_chosen.preview_link}"
			puts "\n"
		elsif selection == 2
			puts "\n"
			puts "Click here to view cover " + "(command + double click):".colorize(:magenta) + " #{book_chosen.image_link(:zoom => 4)}"
			puts "\n"
		elsif selection == 3
			add_to_bookshelf(book_chosen.title, bookshelf)
			# bookshelf << book_chosen.title 
			puts "\n"
			puts "Your bookshelf has been updated!"
			puts "\n"
			sleep 2
		elsif selection == 4
			search(bookshelf)
		else selection == 5
			submenu_running = false
		end 
	end 
	menu(bookshelf)
end 

	def display_bookshelf(bookshelf)
		if bookshelf.length > 0
			puts "Here are your saved items: "
			bookshelf.each_with_index do |book, index|
				puts "#{index + 1}) #{book}"
			end
		else 
			puts "Your bookshelf is currently empty"
		end  
		sleep 2 
		menu(bookshelf)
end 

def menu(bookshelf)
	puts '''
	  ___________________________________________________________
											

	'''
	puts FONT.write("Biblio Curious")
	puts '''

	  ____________________________________________________________
	'''
	sleep 2

	
			puts '''
			Welcome to Biblio-Curious!
			
			What would you like to do today?
			1. Exercise my curiosity
			2. View my saved curiosities
			3. Exit
			'''
		
	selection = gets.chomp.to_i
	system "clear"
	case selection 
	when 1 
		search(bookshelf)
	when 2
		display_bookshelf(bookshelf)
	when 3
		puts """

    _____
   /    /|_ ___________________________________________
  /    // /|                                          /|
 (====|/ //   Thanks for dropping by...              / |
  (=====|/     See you again soon!   
 (====|/                                           / /||
/_________________________________________________/ / ||
|  _____________________________________________  ||  ||
| ||                                            | ||
| ||                                            | ||
| |                                             | |  

------------------------------------------------


 """ 
		exit
	else 
		puts "\n"
		puts "That doesn't seem to be a valid selection"
		puts "\n"
    sleep 2
		menu(bookshelf)
	end  
end 