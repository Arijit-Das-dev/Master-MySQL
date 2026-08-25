-- show indexes
SHOW INDEXES FROM users;

-- CREATE UNIQUE INDEX
CREATE UNIQUE INDEX idx_email ON users(email);

-- CREATE DUPLICATE INDEX
CREATEC INDEX idx_name ON users(name);

-- DROP INDEX
ALTER TABLE users
DROP INDEX email;