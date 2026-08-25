# SUBQUERIES
- Subqueries are the nested queries which is used to break down complex queries into smaller parts.
- Specially used with **READ operations**.

    - ***SELECT*** statement
    - ***FROM*** clause
    - ***WHERE*** clause

## Example Scenario: Salary Comparison
- Suppose we want to find all users who earn more than the average salary of all users.
```sql

SELECT * FROM users 
WHERE salary > (SELECT avg(salary) AS average_salary
FROM users);
```

- The inner query -> calculates average salary
- The outer query -> selects all values greater than average salary

## Other Places Subqueries Are Used
- You can also use subqueries:
    - Inside SELECT columns (called scalar subqueries)
    - In the FROM clause to create derived tables

```sql
SELECT name, salary,
    (SELECT AVG(salary) FROM users) AS average_salary
FROM users;
```