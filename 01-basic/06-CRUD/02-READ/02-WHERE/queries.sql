-- Filtering rows with WHERE CLAUSE

-- selecting name where id is 1
SELECT name FROM users WHERE id = 1;

-- select all where gender is male
SELECT * FROM users WHERE gender = 'Male';

-- select all where name is devid
SELECT * FROM users WHERE name = 'devid';






-- advance quering with conditionals :

-- 1. Comparison operators
-- =
SELECT name FROM users WHERE id = 1;

--  <>, != 
SELECT * FROM users WHERE gender != 'FEMALE';
-- or
SELECT * FROM users WHERE gender <> 'MALE';

-- >, <
SELECT * FROM users WHERE salary > 60000;
SELECT * FROM users WHERE salary < 60000;

-- >= , <=
SELECT * FROM users WHERE salary >= 10000;
SELECT * FROM users WHERE salary <= 10000;





-- 2. Null operators
-- IS NULL , IS NOT NULL
SELECT * FROM users WHERE gender IS NULL;
SELECT * FROM users WHERE gender IS NOT NULL;






-- 3. Logical operators
-- AND
SELECT * FROM users WHERE gender = 'Male' AND salary >= 60000;

-- OR
SELECT * FROM users WHERE gender = 'Female' OR salary <= 60000;






-- 4. Range
-- BETWEEN
SELECT * FROM users WHERE date_of_birth BETWEEN '2000-01-01' AND '2010-01-01';





-- 5. Membership operator
-- IN
SELECT * FROM users WHERE age IN (20, 30, 40);
-- NOT IN
SELECT * FROM users WHERE age NOT IN (50, 60, 70);





-- 6. Pattern matching & sorting
SELECT email FROM users WHERE email LIKE 'a%';  -- returns values of email column where value starts with letter 'a'
SELECT email FROM users WHERE email LIKE '%a';  -- returns values of email column where value ends with letter 'a'
SELECT name FROM users WHERE name LIKE '%R%';   -- returns only those values in name column which contains letter 'R'