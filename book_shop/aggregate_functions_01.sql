-- SELECT COUNT(*) FROM books; -- count every row

-- SELECT COUNT(author_fname) FROM books;

-- SELECT COUNT(DISTINCT author_fname) FROM books;

-- SELECT COUNT(DISTINCT author_lname) FROM books;

-- count distinct authors
SELECT COUNT(DISTINCT author_lname, author_fname) FROM books;

-- how many titles contain "the"?
SELECT title FROM books WHERE title LIKE '%the%';
SELECT COUNT(title) FROM books WHERE title LIKE '%the%';