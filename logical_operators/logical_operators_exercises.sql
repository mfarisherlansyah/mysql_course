# SELECT 10 != 10;

# SELECT 15 > 14 AND 99 - 5 <= 94;

# SELECT 1 IN (5, 3) OR 9 BETWEEN 8 AND 10;

-- SELECT * FROM books WHERE released_year < 1980 ORDER BY released_year;

-- SELECT title, author_lname FROM books WHERE author_lname IN ('Eggers', 'Chabon');

-- SELECT title, author_lname, released_year FROM books WHERE author_lname = 'Lahiri' AND released_year > 2000;

-- SELECT title, pages FROM books WHERE pages BETWEEN 100 AND 200;

-- SELECT title, author_lname FROM books WHERE author_lname LIKE 'c%' OR author_lname LIKE 's%';

# SELECT title, author_lname,
#     CASE
#         WHEN title LIKE '%stories%' THEN 'Short Stories'
#         WHEN title LIKE '%just kids%' OR title LIKE '%a heartbreaking work%' THEN 'Memoir'
#         ELSE 'Novel'
#     END AS 'book groups'
# FROM books;

# SELECT title, author_lname,
#     CASE
#         WHEN COUNT(*) > 1 THEN CONCAT(COUNT(*), ' books')
#         ELSE CONCAT(COUNT(*), ' book')
#     END AS 'count'
# FROM books GROUP BY author_lname, author_fname ORDER BY author_lname ASC;

SELECT title, author_lname FROM books WHERE SUBSTR(author_lname, 1, 1) = 'C' OR SUBSTR(author_lname, 1, 1) = 'S';