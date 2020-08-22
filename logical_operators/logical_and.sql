SELECT title, author_lname, released_year FROM books WHERE author_lname = 'Eggers';
 
SELECT title, author_lname, released_year FROM books WHERE released_year > 2010;

-- SELECT * FROM books WHERE author_lname = 'Eggers';

-- SELECT * FROM books WHERE author_lname = 'Eggers' && released_year > 2010;

-- SELECT title, author_lname, released_year FROM books WHERE author_lname = 'Eggers' AND released_year > 2010;

-- SELECT 1 < 5 && 7 = 9;

-- SELECT -10 > -20 && 0 <= 0;

-- SELECT -40 <= 0 AND 10 > 40;

-- SELECT 54 <= 54 && 'a' = 'A';

SELECT title, author_lname, released_year FROM books WHERE author_lname = 'Eggers' AND released_year > 2010 AND title LIKE '%novel%';