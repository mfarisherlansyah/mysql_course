-- Calculate the average released_year across all books
-- SELECT AVG(released_year) FROM books;

-- SELECT AVG(pages) FROM books;

-- Calculate the average stock quantity for books released in the same year
-- SELECT released_year, AVG(stock_quantity) FROM books GROUP BY released_year;

-- Average pages each author has written
SELECT author_fname, author_lname, AVG(pages) FROM books GROUP BY author_lname, author_fname;