## OFFSET

`OFFSET` is used to **skip a specified number of rows** before returning the result.

### Syntax

```sql
-- SQL COMMANDS


SELECT column_name
FROM table_name
LIMIT number OFFSET number;
```

### QUERY
```sql
-- Skip first 5 rows
SELECT * FROM users
LIMIT 10 OFFSET 5;
```