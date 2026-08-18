## CRUD - UPDATE
- By using UPDATE statement we can easily modify existing columns values.
- You have to always use WHERE clause with UPDATE statement because if you only use UPDATE it will apply for entire dataset.

### SYNTAX :
```sql

UPDATE table_name
SET column 
WHERE condition
```

### EXAMPLE :
```sql

-- replace gender 'Male' with 'M'
UPDATE employees_table
SET gender = 'M'
WHERE gender = 'Male';



-- replace gender 'Female' with 'F'.
UPDATE employees_table
SET gender = 'F'
WHERE gender = 'Female';
```