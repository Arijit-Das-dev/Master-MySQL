## CREATE TABLES
- Now we will create tables.
- For creating tables we have to specify the column names and it's data types and constraints.

### QUERY
```sql

-- step 1
CREATE TABLE students(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    dept VARCHAR(100) NOT NULL,
    sec VARCHAR(10) NOT NULL,
    age INT,
    address VARCHAR(100) NOT NULL,
	gender ENUM('MALE', 'FEMALE', 'OTHERS'),
    date_of_birth DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```