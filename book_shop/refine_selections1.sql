-- INSERT INTO books
--    (title, author_fname, author_lname, released_year, stock_quantity, pages)
--    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
--           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
--           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
           
-- SELECT title FROM books;

-- SELECT DISTINCT author_lname FROM books;

-- SELECT DISTINCT CONCAT(author_fname, ' ', author_lname) FROM books;

-- SELECT DISTINCT author_fname, author_lname FROM books;

SELECT author_lname FROM books;
 
SELECT author_lname FROM books ORDER BY author_lname;
 
SELECT title FROM books;
 
SELECT title FROM books ORDER BY title;
SELECT author_lname FROM books ORDER BY author_lname DESC;
 
SELECT released_year FROM books;
 
SELECT released_year FROM books ORDER BY released_year;
 
SELECT released_year FROM books ORDER BY released_year DESC;
 
SELECT released_year FROM books ORDER BY released_year ASC;
 
SELECT title, released_year, pages FROM books ORDER BY released_year;
 
SELECT title, pages FROM books ORDER BY released_year;
 
SELECT title, author_fname, author_lname 
FROM books ORDER BY 2;
 
SELECT title, author_fname, author_lname 
FROM books ORDER BY 3;
 
SELECT title, author_fname, author_lname 
FROM books ORDER BY 1;
 
SELECT title, author_fname, author_lname 
FROM books ORDER BY 1 DESC;
 
SELECT author_lname, title
FROM books ORDER BY 2;
 
SELECT author_fname, author_lname FROM books 
ORDER BY author_lname, author_fname;