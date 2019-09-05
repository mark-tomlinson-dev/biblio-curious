# Software Development Plan


## Purpose

The purpose of Biblio Curious is to introduce chance into a world that often prefers order and control. It is to stimulate user's natural curiosity - allow a brief insight into just how much is possible in the world / the diversity of the world - rather than tailor the data they receive to previous searches/books read/movies watched.

Netflix is claustrophobic.

We have never had more information at our fingertips and yet...

A book on cheese making from the 19th century, complete with images.

Open minds etc.


## Scope






## User Interaction and Experience

Users interact with Biblio Curious via a series of menus and menu options. Textual user prompts aim to provide clear and cheerful instructions. Particular attention has been paid to tone. Users are to feel encouraged and inspired to exercise their curiosity and, above all, to view the opportunity to search as an opportunity to broaden their horizons rather than return merely practical results (though that, of course, is fine too!).

Error messages in the form of 'putsed strings' have been incorporated into the program, should something go wrong. If the program receives unexpected user input (e.g. a number outside the range of menu options, or gibberish) it will print "That doesn't seem to be a valid selection." If the search feature receives a string of gibberish, a raise and rescue is initialised, simply asking the user to enter a new search. 

From the opening menu, the user will be aware of three options: search, view bookshelf, and exit. Inside the search feature, the user will progressively discover additional features (i.e. read the book and view the cover). This has been designed specifically to be in keeping with the themes of curiosity and surprise.

The 'what would you like to do next menu' is deliberately run on a loop to give the impression of limitless enquiry to the user.

Finally, the user is to be thanked for taking the time to experience this curious little application. 



Include planning and brainstorming pictures here?









## Features

Based on user input, Biblio Curious has a search feature that returns a list of five book titles from the Google Books database. The default search returns results by relevance. It filters out books that do not include a book preview option.

After users select a title from the list, the program displays the author, publication date and description of the book.

Users can then decide to read the book (often the full content, but most often a preview), view the cover, save the book to their virtual bookshelf, conduct a new search, or return to the main menu.

Users can search, read, and save as many times as they like.

From the main menu, they can access their virtual bookshelf and see all the items they have saved in that session. 

With their curiosity satisfied, users are able to exit the program from the main menu. 



## Instructions for Use

Open Terminal or your preferred console.

To initialise the program, enter:

`$ bundle install`

This will install the following Ruby gems:

```
tty-font
tty-spinner
googlebooks
colorize
```

To initialise the program, enter:

`$ ruby main.rb`

From the main menu, make a section and let your curiosity run wild!

**INSERT PHOTO HERE**


## Implementation Plan

In order to bring the features of Biblio Curious to life, a number of important steps will have to be taken.


### Implementing the Search Feature

The core of the application is its search feature. It must be able to return meaningful and diverse results from almost any search term for it to fulfil its purpose. To solve this problem the GoogleBooks Ruby gem will be used. The GoogleBooks gem queries the Google API to search for publications in the Google Books repository. With over 130 million titles in it, the repository provides the ideal range of data for users to get curious and stay curious for as long as they like. 

Tasks to be completed:

- [x] Install GoogleBooks gem from the terminal 
- [x] Discover its capabilities and how to use them
- [x] 'Require' its use in the run file (main.rb)
- [x] Follow basic usage guide in the gem's documentation
- [x] Set search parameters 

### Implementing the Book Preview Feature

The GoogleBooks gem will also be used to implement other aspects of the search feature. Biblio Curious aims to return a limited number of search results. It also wants to provide users with a link to an image of the cover and to a link to the full text or partial text (depending on availability). The gem will be the perfect tool as it allows developers to specify how many results the search should yield. It also allows developers to filter results by whether or not a preview of the book is available. Biblio Curious can take advantage of that to ensure there will always be access to a text preview and cover image (the former necessitating the latter).

Tasks to be completed:

- [x] Consult the gem's documentation to ascertain correct methods and syntax for requisite code
- [x] Write and test code
- [x] Introduce code into the control flow
- [x] Refactor code as required
- [x] Provide user instructions for accessing url links from terminal or console

### Implementing the Bookshelf Feature

Another important feature of Biblio Curious is its bookshelf feature. Users will be able to store any book they like there in an accessible, ordered list. They will be able to move back and forth between the bookshelf and the search function. At the end of a single sessions, truly curious users will have a truly curious list they can consult. In order to implement such feature, Biblio Curious proposes to write an empty array `bookshelf = []`, declare it in global scope and pass it in as an argument to the requisite methods. Biblio Curious will then write code such that when users select the appropriate menu option, the title of the chosen book `chosen_book.title` will be pushed into the bookshelf array `bookshelf << chosen_book.title`. Code may be refactored as required.

Tasks to be completed:

- [x] Create empty array and declare it in global scope
- [x] When user has chosen a pariticular book, provide them with the option of saving it to their bookshelf
- [x] Push chosen book into bookshelf array
- [x] Design and code bookshelf menu options
- [x] Test and debut usability 

















