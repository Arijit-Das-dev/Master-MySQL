## WORKING WITH TABLES - ALTER

### Adding columns :
```sql
-- SQL COMMANDS


-- Adding column by using ALTER
ALTER TABLE students ADD COLUMN is_active BOOLEAN DEFAULT TRUE;     -- have to specify the data type and constraints
ALTER TABLE students ADD COLUMN course VARCHAR(50) NOT NULL;
ALTER TABLE students ADD COLUMN email VARCHAR(100) NOT NULL UNIQUE;
```

### Dropping columns :
```sql
-- SQL COMMANDS


-- Droping column by using ALTER
ALTER TABLE students DROP COLUMN is_active;
ALTER TABLE students DROP COLUMN course;
```

### Modifying columns : (Data Types and Position)
```sql
-- SQL COMMANDS


-- Modify column by using ALTER
ALTER TABLE students MODIFY COLUMN gender ENUM('MALE', 'FEMALE', 'OTHERS') NOT NULL;
ALTER TABLE students MODIFY COLUMN name VARCHAR(70) NOT NULL;

-- Moving column's position by using ALTER
ALTER TABLE students MODIFY COLUMN email VARCHAR(100) FIRST;    -- have to specify the data type of the column
ALTER TABLE students MODIFY COLUMN email VARCHAR(100) AFTER id;

-- Chaning column names
ALTER TABLE students CHANGE COLUMN name full_name VARCHAR(50) NOT NULL;
```
---

### Modifying multiple columns :

```sql
-- SQL COMMANDS


-- ADDING MULTIPLE COLUMNS
ALTER TABLE students 
ADD COLUMN city VARCHAR(50) NOT NULL,
ADD COLUMN phone VARCHAR(10) NOT NULL UNIQUE;

-- DROPPING COLUMNS
ALTER TABLE students
DROP COLUMN city,
DROP COLUMN phone;

-- MODIFY COLUMNS
ALTER TABLE students
MODIFY COLUMN email VARCHAR(30),
MODIFY COLUMN gender ENUM('MALE', 'FEMALE', 'OTHERS') FIRST;
```