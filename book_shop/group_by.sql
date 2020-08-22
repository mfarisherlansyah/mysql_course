-- SELECT title, author_lname FROM books;

-- SELECT title, author_lname FROM books GROUP BY author_lname;

-- count the number of books every author has written
-- SELECT author_lname, COUNT(*) FROM books GROUP BY author_lname;

-- SELECT title, author_fname, author_lname FROM books GROUP BY author_lname;
 
-- SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname;

-- SELECT title, author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname; -- * refers to the grouped rows

-- SELECT title, author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname, author_fname;

SELECT released_year, COUNT(*) FROM books GROUP BY released_year;

SELECT CONCAT('In ', released_year, ', ', COUNT(*), ' book(s) were released') AS 'books released' FROM books GROUP BY released_year;