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