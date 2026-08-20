-- aggregate functions

-- sum()
SELECT sum(salary) AS total_salary FROM users;

-- count()
SELECT count(*) AS total_records FROM users;

-- avg()
SELECT avg(salary) AS average_salary FROM users;

-- min()
SELECT min(age) AS minimum_age FROM users;

-- max()
SELECT max(age) AS maximum_age FROM users;




-- Usinng GROUP BY clause

-- get the total salary by dept
SELECT dept, sum(salary) AS total_salary FROM users GROUP BY dept;

-- get how many employee are working in each dept.
SELECT dept, count(employee) AS total_employee FROM users GROUP BY dept;

-- get the avg salary by dept
SELECT dept, avg(salary) AS average_salary FROM users GROUP BY dept;

-- get which dept pays the most highest salary.
SELECT dept FROM users WHERE salary = (SELECT max(salary) AS maximum_salary FROM users);

-- get the salary range between 1 standard daviation
SELECT * FROM users WHERE salary BETWEEN(
SELECT round(avg(salary) - std(salary)) FROM users)
AND
(SELECT round(avg(salary) + std(salary)) FROM users);