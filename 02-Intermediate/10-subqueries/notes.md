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