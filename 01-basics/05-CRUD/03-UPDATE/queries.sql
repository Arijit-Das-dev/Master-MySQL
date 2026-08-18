-- UPDATE statement to modify existing records in a table

-- increase salary upto 10,000 where salary less than 10,000
UPDATE employees_table
SET salary = salary + 10000
WHERE salary < 10000;



-- replace gender 'Male' with 'M'
UPDATE employees_table
SET gender = 'M'
WHERE gender = 'Male';



-- replace gender 'Female' with 'F'.
UPDATE employees_table
SET gender = 'F'
WHERE gender = 'Female';



-- add a column bonus and add 10% bonus to the all user's salary whom salary < 10,000
-- adding column
ALTER TABLE employees_table
ADD COLUMN bonus INT NOT NULL;

-- adding bonus 10%
UPDATE employees_table
SET bonus = salary * 0.1
WHERE salary < 10000;


-- fill null int rows in salary column with average
-- ** Imp note : This is also an example of subquery

UPDATE employees_table
SET salary = (SELECT average_salary 
FROM (SELECT round(avg(salary)) AS average_salary 
FROM employees_table) AS temp)
WHERE salary IS NULL;

