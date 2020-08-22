-- SELECT SUM(pages) FROM books;

-- SELECT SUM(released_year) FROM books; -- LOL!

-- Sum all pages each author has written
-- SELECT author_fname, author_lname, SUM(pages) FROM books GROUP BY author_lname, author_fname;

SELECT author_fname, author_lname, SUM(released_year) FROM books GROUP BY author_lname, author_fname;