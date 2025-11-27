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

---
-- PART 4: Logical and Pattern Operators
---

-- 24. AND
-- Combines two conditions; both must be TRUE for a record to be selected.
SELECT * FROM TableName WHERE condition1 AND condition2;

-- 25. OR
-- Combines two conditions; at least one must be TRUE for a record to be selected.
SELECT * FROM TableName WHERE condition1 OR condition2;

-- 26. NOT
-- Negates a condition, selecting records where the condition is FALSE.
SELECT * FROM TableName WHERE NOT condition;

-- 27. LIKE
-- Used in the WHERE clause to search for a specified pattern in a column.
SELECT * FROM TableName WHERE column_name LIKE 'pattern';

---
-- PART 5: Data Modification
---

-- 28. UPDATE
-- Modifies existing data records in a table.
UPDATE TableName SET column = new_value WHERE condition;

-- 29. UPDATE WARNING (Safety Note)
-- Always use the WHERE clause with UPDATE to prevent changing every row in the table.
-- DANGER: Missing WHERE clause changes ALL rows in the table!

---
-- PART 6: Limiting Results and Removing Records
---

-- 30. LIMIT
-- Restricts the number of rows returned by a SELECT query.
SELECT * FROM TableName LIMIT number_of_rows;

-- 31. OFFSET
-- Skips a specified number of rows before starting to return the results.
SELECT * FROM TableName LIMIT count OFFSET skip_rows;

-- 32. DELETE FROM
-- Removes existing rows (records) from a table.
DELETE FROM TableName WHERE condition;

-- 33. DELETE WARNING (Safety Note)
-- Always use the WHERE clause with DELETE to prevent removing every row in the table.
-- DANGER: Missing WHERE clause removes ALL rows from the table!

---
-- PART 7: Aggregate Functions
---

-- 34. COUNT()
-- Returns the number of rows that match a specified criterion or the total rows.
SELECT COUNT(*) FROM TableName;

-- 35. AVG()
-- Returns the average value of a numeric column (ignores NULL values).
SELECT AVG(column_name) FROM TableName;

---
-- PART 8: LIKE Operator Wildcards
---

-- 36. LIKE Wildcard % (Starts With)
-- Match strings that start with 'a'.
WHERE column_name LIKE 'a%';

-- 37. LIKE Wildcard % (Ends With)
-- Match strings that end with 'a'.
WHERE column_name LIKE '%a';

-- 38. LIKE Wildcard % (Start/End Filter)
-- Match strings that start with 'a' and end with 't'.
WHERE column_name LIKE 'a%t';

-- 39. LIKE Wildcard % (Substring)
-- Match strings that contain the substring 'wow' in them at any position.
WHERE column_name LIKE '%wow%';

-- 40. LIKE Wildcard _ (Specific Position)
-- Match strings that contain the substring 'wow' in them at the second position (i.e., character at position 1 is anything).
WHERE column_name LIKE '_wow%';

-- 41. LIKE Wildcard _ (Specific Character Position)
-- Match strings that contain 'a' at the second position.
WHERE column_name LIKE '_a%';

-- 42. LIKE Wildcard _ (Minimum Length)
-- Match strings that start with 'a' and contain at least 2 more characters (minimum length is 3).
WHERE column_name LIKE 'a__%';

---
-- PART 9: Filtering Operators
---

-- 43. IN
-- Used in the WHERE clause to specify multiple possible values for a column.
SELECT * FROM TableName WHERE column_name IN ('value1', 'value2');

-- 44. BETWEEN
-- Used in the WHERE clause to select values within a specified inclusive range.
SELECT * FROM TableName WHERE column_name BETWEEN start_value AND end_value;

-- 45. NOT BETWEEN
-- Used in the WHERE clause to select values outside a specified inclusive range.
SELECT * FROM TableName WHERE column_name NOT BETWEEN start_value AND end_value;

---
-- PART 10: Key Constraints
---

-- 46. PRIMARY KEY
-- A constraint that uniquely identifies each record in a table and enforces NOT NULL.
column_name DATATYPE PRIMARY KEY;

-- 47. AUTO_INCREMENT / IDENTITY
-- Automatically generates a unique, sequential number for the key column on insertion.
column_name INT PRIMARY KEY AUTO_INCREMENT;
-- Note: 'IDENTITY(1,1)' is used in SQL Server. 'AUTO_INCREMENT' is common in MySQL.

---
-- PART 11: String Functions
---

-- 48. CONCAT
-- Joins two or more strings together to form a single string.
SELECT CONCAT(string1, ' ', string2);

-- 49. SUBSTRING / SUBSTR
-- Extracts a substring of a specified length from a string starting at a given position.
SELECT SUBSTRING(string, start_position, length);

-- 50. REVERSE
-- Returns the string with the order of the characters reversed.
SELECT REVERSE(string);

-- 51. UPPER / UCASE
-- Converts all characters in a string to uppercase.
SELECT UPPER(string);

-- 52. LOWER / LCASE
-- Converts all characters in a string to lowercase.
SELECT LOWER(string);

-- 53. TRIM
-- Removes leading and trailing spaces (or specified characters) from a string.
SELECT TRIM(string);

-- 54. INSERT (String Function)
-- Replaces a portion of a string with a new substring.
SELECT INSERT(string, start_position, length_to_replace, new_string);

