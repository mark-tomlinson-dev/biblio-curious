require 'googlebooks'
# require "tty-prompt"
# require 'pry'

# prompt = TTY::Prompt.new


# choices = ("Exercise my curiosity")("View my saved curiosities")("Exit")
# prompt.multi_select("Welcome to Biblio Curious! What would you like to do today?", choices)
exit_program = false 
bookshelf = []

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
	puts "Here are your saved books: #{bookshelf}"
elsif selection == 3
	puts "Thanks for stopping by"
	exit 
end 



books = GoogleBooks.search(search_term, {:count => 5, :page => 5})



puts "Here are your results:"
books.each_with_index do |book, index|
	puts "#{index + 1} - #{book.title}"
end
puts "Type your selection in:"
puts ">"
book_index = gets.chomp.to_i - 1
book_chosen = books.to_a[book_index]

puts "Result Below:"
puts "Title: #{book_chosen.title}"
puts "\n"
puts "Description: #{book_chosen.description}"
puts "\n"
puts "Authors: #{book_chosen.authors}"








# first_book = books.first

# # puts first_book.description.class
# # puts first_book.description.length
# # puts first_book.description






# puts "Here is what your curiosity has turned up: #{titles}" 

# puts 
# puts "What would you like to do now?"
# puts 
# puts "1. Find out more about this title"
# puts "2. Save this title to my bookshelf"
# puts "3. Search a new keyword"
# puts "4. Exit"

# selection = gets.chomp.to_i

# if selection == 1
# 	puts first_book.description
# end 
# 	if first_book.description == nil 
# 		puts "Oops there is no further information about this book!"
# 	end

# if selection == 2
# 	bookshelf << first_book.title
# 	puts "This title has been saved to your bookshelf!"
# end 
# if selection == 3
# 	puts "What are you feel curious about?"
# 	puts "> "
# 	search_term = gets.strip 
# end 



# puts "Would you like to save this title for later or ?"
# 	if yes then save item to bookshelf
# 	if no then 


# puts "What would you like to do now?"
# puts "1. Find out more about this title"
# puts "2. Save this title to my bookshelf"
# puts "3. Search a new keyword"
# puts "4. Exit"


# if selection == 1
# 	puts "Which title are you curious about?"
	
	



# # if selection == 2
# # 	# puts b.description
# # 	puts first_book.description
# # end



