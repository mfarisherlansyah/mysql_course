-- CHAR is good to use for cases such as the need to create small data which are less than or equal to 4 bytes in size e.g. state abbreviations, etc. and we know that the data has a fixed length

-- CREATE TABLE inventory(item_name VARCHAR(100), price DECIMAL(8, 2), quantity INT);

-- DATETIME ranges from 1000 to 9999, while TIMESTAMP ranges from 1970 to 2038;

-- SELECT (CURTIME());

-- SELECT (CURDATE());

-- SELECT DATE_FORMAT(CURDATE(), '%w');

-- SELECT DATE_FORMAT(CURDATE(), '%W');

-- SELECT DATE_FORMAT(CURDATE(), '%m/%d/%Y');

-- SELECT DATE_FORMAT(CURTIME(), '%M %D at %h:%i');

-- CREATE TABLE tweets(content VARCHAR(140), username VARCHAR(15), created_at TIMESTAMP DEFAULT NOW());

-- INSERT INTO tweets(content, username) VALUES ('This is my first tweet', 'blackwhitecat');

INSERT INTO tweets(content, username) VALUES ('This is my second tweet', 'blackwhitecat');