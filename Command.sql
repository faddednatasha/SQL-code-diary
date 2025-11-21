-- 🚀 SQL Learning Diary: Core Command Reference

---
-- PART 1: Database Management (DDL)
---

-- 1. Show all existing databases on the server
-- Lists all databases on the server.
SHOW DATABASES;

-- 2. Create a new database named 'my_new_db'
-- Creates a new database with the specified name.
CREATE DATABASE my_new_db;

-- 3. Use the newly created database (or any existing database)
-- Selects a specific database to work within.
USE my_new_db;

-- 4. Drop (delete) a database named 'my_new_db'
-- Permanently deletes a database.
DROP DATABASE my_new_db;


AND 
OR
NOT

---
-- PART 2: Table Structure and Data Basics (DDL/DQL/DML)
---

-- 5. CREATE TABLE
-- Creates a new table and defines its structure.
CREATE TABLE TableName (column1 INT, column2 VARCHAR(50));

-- 6. INT
-- Data type used for storing whole numbers (integers).
INT;

-- 7. VARCHAR
-- Data type used for storing variable-length text (strings up to 'n' characters).
VARCHAR(n);

-- 8. DESCRIBE / DESC
-- Displays the structure (schema) of an existing table.
DESCRIBE TableName;

-- 9. SHOW COLUMNS FROM
-- Alternative command to view a table's structure.
SHOW COLUMNS FROM TableName;

-- 10. SELECT * FROM
-- Retrieves all columns (*) and all rows from a table.
SELECT * FROM TableName;

-- 11. DROP TABLE
-- Permanently deletes a table, removing its structure and all data.
DROP TABLE TableName;

-- 12. INSERT INTO
-- Specifies the table and columns to receive new data.
INSERT INTO TableName (column1, column2);

-- 13. VALUES
-- Provides the actual data records to be inserted by INSERT INTO.
VALUES (value1, value2);

---
-- PART 3: Constraints, Filtering, and Sorting
---

-- 14. NOT NULL
-- A constraint ensuring a column cannot contain empty (NULL) values.
column_name DATATYPE NOT NULL;

-- 15. INSERT different values
-- Syntax for inserting multiple rows in a single statement.
INSERT INTO TableName VALUES ('v1', 'v2'), ('v3', 'v4');

-- 16. DEFAULT
-- A constraint that sets a default value if no value is provided during insertion.
column_name DATATYPE DEFAULT value;

-- 17. SELECT DISTINCT
-- Retrieves only unique, non-duplicate values from a column.
SELECT DISTINCT column_name FROM TableName;

-- 18. SELECT COUNT(DISTINCT)
-- Returns the count of unique, non-duplicate values in a column.
SELECT COUNT(DISTINCT column_name) FROM TableName;

-- 19. WHERE (Text/Equality Filter)
-- Retrieves data rows that meet a specific filtering condition.
SELECT column FROM TableName WHERE column = 'value';

-- 20. WHERE (Comparison Filter)
-- Retrieves rows where a column value matches a comparison (e.g., greater than or equal to).
SELECT * FROM TableName WHERE column >= value;

-- 21. NOT EQUAL <>
-- Comparison operator used in the WHERE clause to exclude a value.
WHERE column_name <> value;

-- 22. ORDER BY
-- Sorts the result set of a query based on one or more columns.
ORDER BY column_name;

-- 23. ORDER BY ASC/DESC
-- Specifies the sort order as ascending (ASC) or descending (DESC).
ORDER BY column_name DESC;

