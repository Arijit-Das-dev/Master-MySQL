# UNIQUE CONSTRAINT
- UNIQUE is a CONSTRAINTS which is used to identify a column uniquely

## What is UNIQUE ?
- Can be NULL
- All the rows must be UNIQUE.
- Can be drop anytime
- A table can contain multiple UNIQUE constraints
- It can be required.

## SYNTAX :
```sql

CREATE TABLE users(

    id INT AUTO_INCREMENT PRIMARY KEY,
    emails VARCHAR(100) UNIQUE
);
```

## How to drop a UNIQUE CONSTRAINT ?
- You have to use INDEX here to drop a UNIQUE CONSTRAINT.

```sql

ALTER TABLE users
DROP INDEX emails;
```