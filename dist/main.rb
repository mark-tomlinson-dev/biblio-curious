require_relative 'methods'

require 'googlebooks'
require 'colorize'
require 'tty-font'

# Uses TTY Font gem for logo
FONT = TTY::Font.new(:standard)

# This is the global data structure, that we pass to all other methods that require it
bookshelf = []

# Run the app
menu(bookshelf)