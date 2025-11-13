-- SQL Basic Database Management Commands

-- 1. Show all existing databases
SHOW DATABASES;

-- 2. Create a new database named 'my_new_db'
CREATE DATABASE my_new_db;

-- 3. Use the newly created database (or any existing database)
USE my_new_db;

-- 4. Drop (delete) a database named 'my_new_db'
DROP DATABASE my_new_db;

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

-- 10. SELECT FROM
-- Retrieves all columns and rows from a table.
SELECT * FROM TableName; 
