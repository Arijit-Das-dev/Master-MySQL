## CRUD - DELETE
- DELETE statement is used to delete the rows in a dataset

## Syntax :
```sql
-- SQL COMMANDS


DELETE FROM table_name
WHERE condition;
```

## QUERIES :
```sql

-- Delete multiple rows with OR
DELETE FROM users
WHERE id = 1 OR 
email = 'xyz@gmail.com';


-- Delete same type of row with AND
DELETE FROM users
WHERE id = 1
AND 
email = 'abc@gmail.com';
```