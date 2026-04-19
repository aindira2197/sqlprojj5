CREATE TABLE authors (
    id INT,
    name VARCHAR(50)
);

CREATE TABLE books (
    id INT,
    title VARCHAR(50),
    author_id INT
);

INSERT INTO authors VALUES
(1,'A1'),(2,'A2');

INSERT INTO books VALUES
(1,'B1',1),(2,'B2',1),(3,'B3',1),(4,'B4',2);

SELECT a.name, COUNT(b.id) AS total_books
FROM authors a
INNER JOIN books b ON a.id = b.author_id
GROUP BY a.name
HAVING COUNT(b.id) > 2;
