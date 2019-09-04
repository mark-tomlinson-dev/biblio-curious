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
	puts "What are you feeling curious about?"
	print "> "
	search_term = gets.strip
		if search_term == nil
			puts "That is not a valid entry. Please try again"
		end
end 



def menu
	puts "\n"
	puts "Welcome to Biblio Curious! What would you like to do today?"
	puts "\n"
	puts "1. Exercise my curiosity" 
	puts "2. View my saved curiosities"
	puts "3. Exit"
	print "> "
	selection = gets.chomp.to_i
	case selection 
	when 1 
		search 
	when 2
		display_bookshelf
	when 3 
		exit
	end  
end 

menu 






