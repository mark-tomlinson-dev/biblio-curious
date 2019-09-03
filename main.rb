require 'googlebooks'
require "tty-prompt"

prompt = TTY::Prompt.new


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



books = GoogleBooks.search(search_term, {:count => 3, :page => 9})
titles = []

# puts first_book.description.class
# puts first_book.description.length
# puts first_book.description
puts 
puts "Here is what your curiosity has turned up:" 
puts 

books.each do |b|
	puts b.title 
	titles << b
end 

puts "What would you like to do now?"
puts "1. Find out more about one of these titles"
puts "2. Save this title to my bookshelf"
puts "3. Search a new keyword"
puts "4. Exit"

selection = gets.chomp.to_i

if selection == 1
	



# if selection == 2
# 	# puts b.description
# 	puts first_book.description
# end



