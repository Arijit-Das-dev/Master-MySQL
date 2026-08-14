## CREATE TABLES
- Now we will create tables.
- For creating tables we have to specify the column names and it's data types and constraints.

### QUERY
```sql

-- SQL COMMAND
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
---

### Data Types explained
INT - used for whole numbers.
VARCHAR(100) - used to define string type columns which maximum length is 100.
ENUM - It's used to define a list of fixed values.
DATE - It's used to define date.

BOOLEAN - It's used for boolean type columns, TRUE and FALSE.
TIMESTAMP - It's used to define current time, it can automatically fetches the current timestamp.

### Constraints explained
AUTO_INCREMENT - It automatically generates values in a column.
PRIMARY KEY - Primary key used to define each row in a column uniquely.
UNIQUE - It ensures each value in a column are unique.
NOT NULL - It ensures a column can not have a null value.
DEFAULT - Sets default values in a column if no value is provided.