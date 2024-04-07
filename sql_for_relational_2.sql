use gap22l;
DROP TABLE IF EXISTS Books;
CREATE TABLE Books
(
Id INT PRIMARY KEY,
Name VARCHAR (50) NOT NULL,
Price INT,
CategoryId INT, 
AuthorId INT
);

DROP TABLE IF EXISTS Categories;
CREATE TABLE Categories
(
CategoryId INT PRIMARY KEY,
Name VARCHAR (50) NOT NULL
);

DROP TABLE IF EXISTS Authors; 
CREATE TABLE Authors
(
Id INT PRIMARY KEY,
Name VARCHAR (50) NOT NULL
);

INSERT INTO Categories 
VALUES (1, 'Cat-A'),
(2, 'Cat-B'),
(3, 'Cat-C'),
(7, 'Cat-D'),
(8, 'Cat-E'),
(4, 'Cat-F'),
(10,'Cat-G'),
(12,'Cat-H'),
(6, 'Cat-I');

INSERT INTO Authors
VALUES (1, 'Author-A'),
(2, 'Author-B'),
(3, 'Author-C'),
(10, 'Author-D'),
(12, 'Author-E');

INSERT INTO Books 
VALUES (1, 'Book-A', 100, 1, 2),
(2, 'Book-B', 200, 2, 2),
(3, 'Book-C', 150, 3, 2),
(4, 'Book-D', 100, 3,1),
(5, 'Book-E', 200, 3,1),
(6, 'Book-F', 150, 4,1),
(7, 'Book-G', 100, 5,5),
(8, 'Book-H', 200, 5,6),
(9, 'Book-I', 150, 7,8);