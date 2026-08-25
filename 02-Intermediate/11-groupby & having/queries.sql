-- GROUP BY Example: Average Salary by Gender
SELECT gender, AVG(salary) AS average_salary
FROM users
GROUP BY gender;


-- gender whos average salary > 60000
SELECT gender, AVG(salary) AS average_salary
FROM users
GROUP BY gender
HAVING average_salary > 60000;