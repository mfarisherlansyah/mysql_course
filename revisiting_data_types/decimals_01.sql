CREATE TABLE items(price DECIMAL(5, 2));

INSERT INTO items(price) VALUES(7);

INSERT INTO items(price) VALUES(7987654); -- SQL gonna return largest possible number

INSERT INTO items(price) VALUES(34.88);

INSERT INTO items(price) VALUES(298.999); -- SQL gonna round up to 299.00

INSERT INTO items(price) VALUES(1.9999); -- SQL gonna round up to 2.00

SELECT * FROM items;