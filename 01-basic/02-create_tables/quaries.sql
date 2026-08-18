-- Create table of the database
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