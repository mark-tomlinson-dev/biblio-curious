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

def search
	puts "\n"
	puts "What are you feeling curious about?"
	puts "\n"
	print "> "
	search_term = gets.strip
		if search_term == nil
			puts "That is not a valid entry. Please try again"
		end
	
	books = GoogleBooks.search(search_term, {:count => 5, :page => 3})
	puts "\n"
	puts "Here is what your curiosity turned up:"
	puts "\n"

		books.each_with_index do |book, index|
			puts "#{index + 1} - #{book.title}"
		end

	puts "\n"
	puts "Please select a title for further inspection:"
	puts "\n"
	print "> "
	puts "\n"
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
	puts "\n"
	puts "What would you like to do now?"
	puts "\n"
	puts "1. Save book to bookshelf"
	puts "2. Conduct a new search"
	puts "3. Exit"
	
	selection = gets.chomp.to_i 
		if selection == 1
			bookshelf << book_chosen
		elsif selection == 2
			search
		else selection == 3
			exit 
		end  
	p bookshelf 
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



def display_bookshelf(bookshelf_array)
	puts "Here are your saved items:"
	bookshelf_array.each_with_index do |book, index|
		puts "#{index + 1} - #{book.title}"
	end 
end 


	


def menu
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
		search
	when 2
		display_bookshelf(bookshelf_array)
	when 3 
		exit
	else 
		puts "You have made an invalid selection. Please enter a number from 1 to 3."
	end  
end 








