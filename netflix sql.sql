create table netflix;
SELECT *
FROM netflix;
ALTER TABLE netflix
ADD COLUMN id INT FIRST;
SET @row_number = 0;


SET SQL_SAFE_UPDATES = 0;

UPDATE netflix
SET id = (@row_number := @row_number + 1);
SET SQL_SAFE_UPDATES = 1;
SELECT *
FROM netflix;


ALTER TABLE netflix
ADD PRIMARY KEY (id);
SELECT *
FROM netflix;