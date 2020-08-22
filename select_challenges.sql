USE cat_app;

SHOW TABLES;

SELECT * FROM cats;

SELECT cat_id FROM cats;

SELECT name, breed FROM cats;

SELECT name, age FROM cats WHERE breed = 'Tabby';

SELECT cat_id, age FROM cats WHERE cat_id = age;