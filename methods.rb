def main_menu
	puts "Enter an option"
	selection = gets.chomp.to_i
	case (selection)
	when 1
		puts "Option 1"
		true
	when 2
		puts "Option 2"
		true
	when 10
		puts "10"
		false
	end
end


continue_menu = true
while continue_menu
 continue_menu = menu
end


def boo


