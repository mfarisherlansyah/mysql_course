-- find all books which titles contain 'stories'
SELECT title FROM books WHERE title LIKE '%stories%';

-- find the longest book
SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;

-- select the three latest released books
SELECT CONCAT(title, ' - ', released_year) AS summary FROM books ORDER BY released_year DESC LIMIT 3;

-- select all books with an author_lname that contains space
SELECT title, author_lname FROM books WHERE author_lname LIKE '% %';

-- select three books with the lowest quantity 
SELECT title, released_year, stock_quantity FROM books ORDER BY stock_quantity ASC LIMIT 3;

SELECT title, author_lname FROM books ORDER BY author_lname, title;

SELECT CONCAT('MY FAVOURITE AUTHOR IS ', UPPER(author_fname), ' ', UPPER(author_lname), '!') AS 'yell' FROM books ORDER BY author_lname ASC;