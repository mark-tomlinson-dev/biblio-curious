puts "Welcome to Biblio Curious! What would you like to do today?"
puts "1. Exercise my curiosity" 
puts "2. View my saved curiosities"
puts "3. Exit"
print "> "

selection = gets.chomp.to_i

if selection == 1
	puts "What are you feeling curious about?"
elsif selection == 2
	puts "Here are your saved books"
elsif seleciton == 3
	puts "Thanks for stopping by"