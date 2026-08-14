## CRUD - READ (WHERE)
- By the help of WHERE Clause we can do filtering in database.
- It helps to identify specific value by using a condition.

### QUERY :
```sql
-- SQL commands

-- selecting name where id is 1
SELECT name FROM users WHERE id = 1;

-- selecting name where salary greater than 10,000
SELECT name FROM users WHERE salary > 10000;

-- select all where gender is male
SELECT * FROM users WHERE gender = 'Male';

-- select all where name is devid
SELECT * FROM users WHERE name = 'devid';
```