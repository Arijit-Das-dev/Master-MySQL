-- String functions

-- Combine -> CONCAT, 
-- 1
SELECT CONCAT(
    lower(name),
    '@gmail.com'
) AS emails
FROM users;

-- 2
SELECT CONCAT(
    lower(first_name),
    ' ',
    lower(last_name)
) AS full_name
FROM users;







-- Case 

-- LOWER()
SELECT lower(column) AS column_names FROM users;

-- UPPER()
SELECT upper(column) AS column_names FROM users;

-- To check for upper case letters
SELECT names FROM users WHERE names != lower(names);

-- update those namess which starts with upper case letters
UPDATE users SET names = lower(names);








-- Clean

-- check for errors

-- check for leading or trailing spaces
SELECT names FROM users WHERE names != TRIM(names);

-- check for left side spaces
SELECT names FROM users WHERE names != LTRIM(names);

-- check for right side spaces
SELECT names FROM users WHERE names != RTRIM(names);

-- check for special characters
SELECT names FROM users WHERE names REGEXP('[^A-Za-z]');

-- check for numbers
SELECT names FROM users WHERE names REGEXP('[0-9]');



-- Now update

-- remove trailing spaces
UPDATE users SET names = TRIM(names);

-- remove inside spaces
UPDATE users SET names = REGEXP_REPLACE(names, ' ', '_');

-- remove special characters
UPDATE users SET names = REGEXP_REPLACE(names, '[^A-Za-z_]', '');

-- remove numbers
UPDATE users SET names = REGEXP_REPLACE(names, '[0-9]', '');

-- replace a whole string
UPDATE users SET names = REPLACE(names, 'Dev id', 'Devid');








-- Measure
SELECT LENGTH(names), CHAR_LENGTH(names) FROM users;