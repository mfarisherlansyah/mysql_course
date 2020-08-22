# CREATE TABLE users(
#     email VARCHAR(255) PRIMARY KEY,
#     created_at TIMESTAMP DEFAULT NOW()
# );

-- INSERT INTO users(email) VALUES ('Katie34@yahoo.com'), ('tunde@gmail.com');

-- Challenge 1
SELECT DATE_FORMAT(created_at, '%M %D %Y') AS earliest_date FROM users ORDER BY created_at ASC LIMIT 1;

-- Challenge 2
SELECT * FROM users WHERE created_at = (SELECT MIN(created_at) FROM users);

-- Challenge 3
SELECT DATE_FORMAT(created_at, '%M') AS month, COUNT(*) AS 'count' FROM users 
GROUP BY month ORDER BY COUNT(DATE_FORMAT(created_at, '%M')) DESC;

-- Challenge 4
SELECT COUNT(email) AS 'yahoo_users' FROM users WHERE email LIKE '%@yahoo%';

-- Challenge 5
SELECT
    CASE
        WHEN email LIKE '%@gmail%' THEN 'gmail'
        WHEN email LIKE '%@yahoo%' THEN 'yahoo'
        WHEN email LIKE '%@hotmail%' THEN 'hotmail'
        ELSE 'other'
    END AS provider,
    COUNT(email) AS total_users
FROM users GROUP BY provider ORDER BY total_users DESC;