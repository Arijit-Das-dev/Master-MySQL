# PRIMARY KEY
- In Database Management System **PRIMARY KEY** is mainly used to identify a table in a database.
- It is an CONSTRAINT mainly used to uniquely identify rows in a table.

## What is a PRIMARY KEY ?
- A primary key must be :
    - NOT NULL
    - UNIQUE
    - Each table must have one PRIMARY KEY
    - Used to rows in a table

## SYNTAX :
```sql

CREATE TABLE users(

    id INT AUTO_INCREMENT PRIMARY KEY;
)
```