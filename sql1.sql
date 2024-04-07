use gap22l;

show tables;

SELECT * FROM customer;


UPDATE customer
SET first = 'Selly'
WHERE first = 'Sally';

DELETE FROM customer
WHERE city = 'Kent';
