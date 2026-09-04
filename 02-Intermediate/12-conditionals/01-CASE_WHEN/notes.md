# CASE WHEN
- It is used when we want conditional based results from the table

### BASIC SYNTAX
```sql
CASE 
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    WHEN conditionN THEN resultN
ELSE result
END;
```

- ***CASE*** - Starting the logic.
- ***WHEN*** - Defines the condition.
- ***THEN*** - Defines the result based on condition.
- ***ELSE*** - Optional result.
- ***END*** - End of conditional logic.


### EXAMPLE
```sql
SELECT name,
    CASE 
        WHEN gender = 'Male' THEN 'M'
        WHEN gender = 'Female' THEN 'F'
    ELSE 'Others'
END
FROM users;
```