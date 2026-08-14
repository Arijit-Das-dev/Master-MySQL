## WORKING WITH TABLES - ALTER

### Adding columns :
```sql

-- Adding column by using ALTER
ALTER TABLE students ADD COLUMN is_active BOOLEAN DEFAULT TRUE;
ALTER TABLE students ADD COLUMN course VARCHAR(50) NOT NULL;
ALTER TABLE students ADD COLUMN email VARCHAR(100) NOT NULL UNIQUE;
```

### Dropping columns :
```sql

-- Droping column by using ALTER
ALTER TABLE students DROP COLUMN is_active;
ALTER TABLE students DROP COLUMN course;
```

### Modifying columns : (Data Types and Position)
```sql

-- Modify column by using ALTER
ALTER TABLE students MODIFY COLUMN gender ENUM('MALE', 'FEMALE', 'OTHERS') NOT NULL;
ALTER TABLE students MODIFY COLUMN name VARCHAR(70) NOT NULL;

-- Moving column's position by using ALTER
ALTER TABLE students MODIFY COLUMN email VARCHAR(100) FIRST;    -- have to specify the data type of the column
ALTER TABLE students MODIFY COLUMN email VARCHAR(100) AFTER id;
```