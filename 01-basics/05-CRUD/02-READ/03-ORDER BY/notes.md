## CRUD - READ (ORDER BY)
- ORDER BY clause helps in sorting according to ascending order or discending order.

```sql
-- SQL commands

-- sort all values based on date_of_birth in ascending order.
SELECT * FROM users
ORDER BY date_of_birth ASC;


-- sort all values based on salary in descending order.
SELECT * FROM users
ORDER BY salary DESC;
```