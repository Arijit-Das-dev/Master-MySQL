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


-- INNER JOIN
SELECT users.name, addresses.city
FROM users
INNER JOIN addresses
ON users.id = addresses.user_id;

-- LEFT JOIN
SELECT users.name, addresses.city
FROM users
LEFT JOIN addresses
ON users.id = addresses.user_id;

-- RIGHT JOIN
SELECT users.name, addresses.city
FROM users
RIGHT JOIN addresses
ON users.id = addresses.user_id;