-- CREATE TABLE if NOT EXISTS shopping (id INTEGER PRIMARY KEY, name TEXT, amount
-- INTEGER);
-- INSERT INTO shopping VALUES (1, 'Avokado', 5);
-- INSERT INTO shopping VALUES (2, 'Milk', 2);
-- INSERT INTO shopping VALUES (3, 'Bread', 3);
-- INSERT INTO shopping VALUES (4, 'Chocolate', 8);
-- INSERT INTO shopping VALUES (5, 'Bamba', 5);
-- INSERT INTO shopping VALUES (6, 'Orange', 10);

--7 delete from shopping table items with name in pattern of 'Orange'
DELETE from shopping WHERE name like 'Orange';

--8  update rows in shopping table:
--8.1 update name to 'Bisli' all rows for all items with name in pattern of 'Bamba'
UPDATE shopping SET name = 'Bisli' WHERE name LIKE 'Bamba';
--8.2 update amount value to 1 all rows for all items with name in pattern of 'Milk'
UPDATE shopping SET amount=1 WHERE name LIKE 'Milk';

--9. add COLUMN name maavar in table shopping;
-- ALTER TABLE shopping ADD COLUMN maavar;


--10 update VALUES of maavar column according to the id VALUES
UPDATE shopping SET maavar=6 WHERE id=1;
UPDATE shopping SET maavar=3 WHERE id=2;
UPDATE shopping SET maavar=12 WHERE id=3;
UPDATE shopping SET maavar=8 WHERE id=4;
UPDATE shopping SET maavar=5 WHERE id=5;

-- 11 get all rows according to maavars values:
--11.1 get all rows if the amount is more than 1 and the maavar is 
-- more than 5
SELECT * FROM shopping WHERE amount > 1 AND maavar > 5;

--11.2 get all items from all maavars of 3-5
SELECT * FROM shopping WHERE maavar BETWEEN 3 AND 5;

--12. sort rows according to maavar column:
--12.1. sort rows according to maavar column, from small to big values
SELECT * FROM shopping ORDER BY maavar;
--12.2. sort rows according to maavar column, from big to small values
SELECT * FROM shopping ORDER BY maavar DESC;

-- 13. create books table, add 2 rows with all values, then delete all rows
CREATE TABLE books (id INTEGER PRIMARY KEY, name TEXT);
INSERT INTO books VALUES (1, 'SQL PROGRAMMING');
INSERT INTO books VALUES (2, 'CSHARP PROGRAMMING');
DELETE FROM books;


-- 14. get aggregation values: total rows, maximum amount value,
--average amount value and minimum amount value from shopping table
SELECT COUNT(*)from shopping;
SELECT MAX(amount) from shopping;
SELECT AVG(amount) from shopping;
SELECT MIN(amount) from shopping;

--15. added 2 item to shopping table 
-- and display the maavar value and how many items this maavar has
INSERT INTO shopping VALUES (6, 'Onions', 3, 6);
INSERT INTO shopping VALUES (7, 'Orio', 1, 8);
Select maavar, COUNT(*) FROM shopping GROUP BY maavar;

-- 16. get all rows values from shopping table, when id values are in "SECRET" column
SELECT id AS "SECRET", name, amount, maavar FROM shopping;


