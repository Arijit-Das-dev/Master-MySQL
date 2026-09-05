# IF ELSE
- It is used when we want conditional based results from the table

### BASIC SYNTAX
```sql

SELECT column,
IF (condition, result1, result2)
FROM users;
```

### EXAMPLE
```sql
SELECT gender,
IF(gender='female', True, False) AS is_female
FROM users;
```