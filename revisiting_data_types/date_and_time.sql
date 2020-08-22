-- CREATE TABLE people(
--     name VARCHAR(100),
--     birthdate DATE,
--     birthtime TIME,
--     birthdt DATETIME
-- );

-- INSERT INTO people(name, birthdate, birthtime, birthdt) VALUES ('Padma', '1983-11-11', '10:07:35', '1983-11-11 10:07:35');

-- INSERT INTO people(name, birthdate, birthtime, birthdt) VALUES ('Larry', '1943-12-25', '04:10:42', '1943-12-25 04:10:42');

-- SELECT * FROM people;

-- CURDATE() gives current date
-- CURTIME() gives current time
-- NOW() gives current datetime

-- SELECT CURDATE();
-- SELECT CURTIME();

-- INSERT INTO people(name, birthdate, birthtime, birthdt) VALUES ('Microwave', CURDATE(), CURTIME(), NOW());

-- SELECT name, birthdate FROM people;

-- SELECT name, birthdate, DAY(birthdate) FROM people;

-- SELECT name, birthdate, DAYNAME(birthdate) FROM people;

-- SELECT name, birthdate, DAYOFWEEK(birthdate) FROM people;

-- SELECT name, birthdate, DAYOFYEAR(birthdate) FROM people;

-- SELECT name, birthtime, DAYOFYEAR(birthtime) FROM people;

-- SELECT name, birthdt, DAYOFYEAR(birthdt) FROM people;

-- SELECT name, birthdt, MONTH(birthdt) FROM people;

-- SELECT name, birthdt, MONTHNAME(birthdt) FROM people;

-- SELECT name, birthtime, MONTHNAME(birthtime) FROM people;

-- SELECT name, birthtime, HOUR(birthtime) FROM people;

-- SELECT name, birthtime, MINUTE(birthtime) FROM people;

-- SELECT CONCAT(MONTHNAME(birthdate), ' ', DAY(birthdate), ', ', YEAR(birthdate)) AS 'birth date' FROM people;

-- SELECT DATE_FORMAT('2009-10-04 22:23:00', '%W, %M %Y');

-- SELECT DATE_FORMAT(birthdt, 'Was born on %W') FROM people;

-- SELECT DATE_FORMAT(birthdt, '%m/%d/%Y') FROM people;

-- SELECT DATE_FORMAT(birthdt, '%m/%d/%Y at %h:%i') FROM people;

-- SELECT name, birthdate, DATEDIFF(NOW(), birthdate) FROM people;

-- SELECT birthdt, DATE_ADD(birthdt, INTERVAL 1 MONTH) FROM people;

-- SELECT birthdt, DATE_ADD(birthdt, INTERVAL 10 SECOND) FROM people;

-- SELECT birthdt, DATE_ADD(birthdt, INTERVAL 3 QUARTER) FROM people;

-- SELECT birthdt, birthdt + INTERVAL 1 MONTH FROM people;

-- SELECT birthdt, birthdt - INTERVAL 5 MONTH FROM people;

-- SELECT birthdt, birthdt + INTERVAL 15 MONTH + INTERVAL 10 HOUR FROM people;

-- CREATE TABLE comments(content VARCHAR(100), created_at TIMESTAMP DEFAULT NOW());

-- INSERT INTO comments(content) VALUES('Lol what a funny article');
-- INSERT INTO comments(content) VALUES('I found this offensive');

-- INSERT INTO comments(content) VALUES('Akakakaka');

-- SELECT * FROM comments ORDER BY created_at;

-- CREATE TABLE comments2(content VARCHAR(100), changed_at TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP);
-- CURRENT_TIMESTAMP has the similar function as NOW()

-- INSERT INTO comments2(content) VALUES('Lol what a funny article');
-- INSERT INTO comments2(content) VALUES('I found this offensive');
-- INSERT INTO comments2(content) VALUES('Akakakaka');

UPDATE comments2 SET content = 'This is not gibberish!' WHERE content = 'Akakakaka';

SELECT * FROM comments2 ORDER BY changed_at;