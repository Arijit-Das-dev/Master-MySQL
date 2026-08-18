## CRUD - READ (WHERE)
- By the help of WHERE Clause we can do filtering in database.
- It helps to identify specific value by using a condition.

### QUERY :
```sql
-- SQL COMMANDS


-- selecting name where id is 1
SELECT name FROM users WHERE id = 1;

-- select all where gender is male
SELECT * FROM users WHERE gender = 'Male';

-- select all where name is devid
SELECT * FROM users WHERE name = 'devid';
```
--- 

## ADVANCE QUERING WITH CONDITIONAL OPERATORS

| Type           | Operators                             | Example                         |
| -------------- | ------------------------------------- | ------------------------------- |
| **Comparison** | `=`, `<>`, `!=`, `>`, `<`, `>=`, `<=` | `age >= 18`                     |
| **Logical**    | `AND`, `OR`, `NOT`                    | `age > 18 AND city = 'Kolkata'` |
| **Range**      | `BETWEEN`                             | `age BETWEEN 18 AND 25`         |
| **Membership** | `IN`, `NOT IN`                        | `city IN ('Kolkata','Delhi')`   |
| **Pattern**    | `LIKE`, `NOT LIKE`                    | `name LIKE 'A%'`                |
| **Null**       | `IS NULL`, `IS NOT NULL`              | `email IS NULL`                 |
| **Existence**  | `EXISTS`, `NOT EXISTS`                | `WHERE EXISTS (...)`            |
---