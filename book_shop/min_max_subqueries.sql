-- SELECT MIN(released_year) FROM books;

-- SELECT MIN(pages) FROM books;

-- SELECT MAX(released_year) FROM books;

-- SELECT MAX(pages) FROM books;

-- SELECT * FROM books WHERE pages = (SELECT MIN(pages) FROM books);

-- SELECT * FROM books WHERE pages = (SELECT MAX(pages) FROM books);

-- SELECT title, MAX(pages) AS 'pages' FROM books WHERE pages = (SELECT MAX(pages) FROM books);

-- SELECT title, pages FROM books WHERE pages = (SELECT MAX(pages) FROM books);

-- SELECT title, pages FROM books ORDER BY pages ASC LIMIT 1;

-- SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;

-- Find the year each author published their first book
SELECT author_fname, author_lname, MIN(released_year) FROM books GROUP BY author_lname, author_fname;

-- Find the longest page count for each author
SELECT author_fname, author_lname, MAX(pages) FROM books GROUP BY author_lname, author_fname;

SELECT CONCAT(author_fname, ' ', author_lname) AS 'authors', MAX(pages) AS 'longest book' FROM books GROUP BY author_lname, author_fname;