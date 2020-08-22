-- SELECT title, released_year, -- don't forget comma before CASE
--     CASE
--         WHEN released_year >= 2000 THEN 'Modern Lit'
--         ELSE '20th century lit'
--     END AS period
-- FROM books;

-- SELECT title, released_year, -- don't forget comma before CASE
--     CASE
--         WHEN released_year >= 2000 THEN 'Modern Lit'
--         ELSE '20th century lit'
--     END AS period
-- FROM books ORDER BY released_year;

# SELECT title, stock_quantity, -- don't forget comma before CASE
#     CASE
#         WHEN stock_quantity < 50 THEN '*'
#         WHEN stock_quantity >= 50 AND stock_quantity < 100 THEN '**'
#         ELSE '***'
#     END AS stock
# FROM books;

# SELECT title, stock_quantity, -- don't forget comma before CASE
#     CASE
#         WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
#         WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
#         ELSE '***'
#     END AS stock
# FROM books;

# SELECT title, -- don't forget comma before CASE
#     CASE
#         WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
#         WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
#         ELSE '***'
#     END AS stock
# FROM books;

SELECT title, -- don't forget comma before CASE
    CASE
        WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
        WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
        WHEN stock_quantity BETWEEN 101 AND 150 THEN '***'
        ELSE '****'
    END AS stock
FROM books;

SELECT title, stock_quantity, -- don't forget comma before CASE
    CASE
        WHEN stock_quantity <= 50 THEN '*'
        WHEN stock_quantity <= 100 THEN '**'
        ELSE '***'
    END AS stock
FROM books;