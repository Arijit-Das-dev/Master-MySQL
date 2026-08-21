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

-- 3
