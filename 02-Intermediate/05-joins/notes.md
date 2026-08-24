# JOINS
- **JOINS** are used to COMBINE multiple tables.
- By the help of **FOREIGN KEY** and **PRIMARY KEY**, we can make tables work together by combining them.

## Process of joining tables.
```sql

-- CREATE PARENT TABLE;
CREATE TABLE users(

    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(10)
);


-- CREATE CHILD TABLE;
CREATE TABLE addresses(

    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    city VARCHAR(20)

    CONSTRAINT fk_user
    FOREIGN KEY (user_id)
    PRIMARY KEY users(id)
    ON DELETE CASCADE
);

-- NOW COMBINE IT;
SELECT users.name, addresses.city
FROM users
JOIN addresses
ON users.id = addresses.user_id;
```

## TYPES :
- **INNER JOIN**
- **LEFT JOIN**
- **RIGHT JOIN**
---

### 1. INNER JOIN
- ***INNER JOIN*** picks all the common values from multiple tables.
    - Syntax :
    ```sql
    SELECT users.*, addresses.*
    FROM users
    INNER JOIN addresses
    ON 
    users.id = addresses.user_id;
    ```

### 2. LEFT JOIN
- ***LEFT JOIN*** takes all the values from the left table and sets null in those rows of right table where the values does not match with left table.
    - Syntax :
    ```sql
    SELECT users.*, addresses.*
    FROM users
    LEFT JOIN addresses
    ON 
    users.id = addresses.user_id;
    ```

### 3. RIGHT JOIN
- ***RIGHT JOIN*** takes all the values from right table and sets null in those rows of left table where the values does not match.
    - Syntax :
    ```sql
    SELECT users.*, addresses.*
    FROM users
    RIGHT JOIN addresses
    ON 
    users.id = addresses.user_id;
    ```