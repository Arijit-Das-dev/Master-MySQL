## LIMIT

`LIMIT` is a SQL clause used to restrict the number of rows returned by a query.

### Syntax
```sql
-- SQL COMMANDS


SELECT column_name
FROM table_name
LIMIT number;
```

### QUERY
```sql
-- SQL COMMANDS

-- Top 5 rows
SELECT * FROM users
LIMIT 5;


-- Get 10 rows 
-- starting from the 6th row
SELECT * FROM users
LIMIT 5, 10;
```