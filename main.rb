require 'googlebooks'
require_relative 'methods'
require 'tty-prompt'
require 'tty-spinner'
require 'colorize'
prompt = TTY::Prompt.new
spinner = TTY::Spinner.new

# this is the global data structure, that we pass to all other methods that require it
bookshelf = []

# run the app
menu(bookshelf)