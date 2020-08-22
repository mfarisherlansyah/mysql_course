-- SELECT title, author_lname, released_year FROM books WHERE author_lname = 'Eggers' || released_year > 2010;

-- SELECT 40 <= 100 || -2 > 0;

-- SELECT 10 > 5 || 5 = 5;

-- SELECT 'a' = 5 || 3000 > 2000;

SELECT title, author_lname, released_year, stock_quantity FROM books 
WHERE author_lname = 'Eggers' || released_year > 2010 || stock_quantity > 100;