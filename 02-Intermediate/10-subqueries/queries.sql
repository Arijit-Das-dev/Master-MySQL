-- Suppose we want to find all users who earn more than the average salary of all users.
SELECT * FROM users 
WHERE salary > (SELECT avg(salary) AS average_salary
FROM users);

-- 