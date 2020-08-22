-- SELECT title, author_fname FROM books WHERE author_fname LIKE '%da%';

-- SELECT title, author_fname FROM books WHERE author_fname LIKE 'da%';

-- SELECT title FROM books WHERE  title LIKE 'the';
 
-- SELECT title FROM books WHERE  title LIKE '%the';
 
-- SELECT title FROM books WHERE title LIKE '%the%';

-- SELECT title, stock_quantity FROM books;

-- SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '____'; -- four characters long

SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '___';

SELECT title FROM books WHERE title LIKE '%\%%'; -- '%%%%' returns everything in the selected columns

SELECT title FROM books WHERE title LIKE '%\_%';