# Development Log


## Status Update One - Wednesday 4 September 2019

Dear Rachael and Harrison,  

Firstly, thanks to both of you for all your help today. Your continual support is very much appreciated

This is just a brief message to give you a status update on my terminal app (tentatively titled "Biblio Curious")

Tuesday was spent brainstorming app ideas, installing the GoogleBooks ruby gem and then playing around with it to see what it could do. In consultation with Rachael, I developed an MVP of an app that could return a list of five random books on any subject. Users would then be able to explore titles in that list and save them to a virtual bookshelf for future reference. 

After a (small!) crisis of confidence in the purpose and value of my application this morning (Wednesday), I resisted the urge to start a new project and turned my attention to getting some code down.

Before long I had a working menu. A significant technical problem was encountered in trying to isolate attributes of the items returned in the search. I was under the mistaken assumption that what the gem was returning was an array of books. With help from Aaron it was discovered that what was actually being returned was the data in json form. This problem was overcome by applying the `.to_a` method.

With one day of development remaining, I have a significant number of tasks remaining including further developing the bookshelf feature, refactoring existing code, and improving the appearance and usability of the app.

With best wishes,
Mark T   


## Status Update Two - Thursday 5 September 2019

Dear Rachael and Harrison, 

Just checking in for my second status update :) 

Today was another mammoth day. After feeling last night that the app was a bit light on, I got up early and quickly added two new features within the search feature: (i) read the book; and (ii) view the book cover. These were relatively simple to implement. The most challenging part was probably finding out how to open a link from terminal without copying and pasting it! 

After that, with Harrison's help, I set about refactoring the majority of my code. The menu method had become terribly bloated. Several separate methods were generated from some of that code.

Next it was on to the bugs. My god. So many bugs. I had quite a few undefined method errors. Then it was really just a matter of fixing user flow (returning users to the appropriate menu instead of the program quitting and so on). Again, a big thanks to you, Harrison, for the guidance. 

In the afternoon I started on the docs  and was reminded that I still had a few technical aspects of the assignment to achieve such as testing. Rach helped me refactor my code so that some of it might actually be testable (thanks Rach!). That remains to be done tomorrow. As does the powerpoint presentation and some of the documentation.

Flow chart is done and perhaps 2/3rds to 3/4s of the written work. Tomorrow will be massive again but I should get there by....10.59 pm. 

Cheers,
Mark 