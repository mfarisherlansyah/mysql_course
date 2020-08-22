-- SELECT title FROM books;

-- SELECT title FROM books LIMIT 3;

-- SELECT title, released_year FROM books ORDER BY 2; -- 2 refers to released_year

-- SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 5;

-- SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 0,3; -- gives three data, starting from the first row which has the index zero

-- SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 1,3; -- gives three data, starting from the second row which has the index one

-- SELECT * FROM books LIMIT 1;

SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 10, 1;

SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 1, 3;

SELECT title FROM books LIMIT 5, 1238;

SELECT title FROM books LIMIT 3;
 
SELECT title FROM books LIMIT 1;
 
SELECT title FROM books LIMIT 10;
 
SELECT * FROM books LIMIT 1;
 
SELECT title, released_year FROM books 
ORDER BY released_year DESC LIMIT 5;
 
SELECT title, released_year FROM books 
ORDER BY released_year DESC LIMIT 1;
 
SELECT title, released_year FROM books 
ORDER BY released_year DESC LIMIT 14;
 
SELECT title, released_year FROM books 
ORDER BY released_year DESC LIMIT 0,5;
 
SELECT title, released_year FROM books 
ORDER BY released_year DESC LIMIT 0,3;
 
SELECT title, released_year FROM books 
ORDER BY released_year DESC LIMIT 1,3;
 
SELECT title, released_year FROM books 
ORDER BY released_year DESC LIMIT 10,1;
 
SELECT * FROM tbl LIMIT 95,18446744073709551615;
 
SELECT title FROM books LIMIT 5;
 
SELECT title FROM books LIMIT 5, 123219476457;
 
SELECT title FROM books LIMIT 5, 50;