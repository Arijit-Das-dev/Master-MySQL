# FOREIGN KEY
- A FOREIGN KEY in a table used to Link between two tables. 
- It maintains data intigrity.
- Two tables must have a common column which matches it's values.

## SYNTAX :
```sql

CREATE TABLE address(

    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    states VARCHAR(20) NOT NULL,
    cities VARCHAR(20) NOT NULL,
    streets VARCHAR(20) NOT NULL,
    pincode VARCHAR(10),
    
    CONSTRAINT fk_user 
    FOREIGN KEY(user_id) 
    REFERENCES users(id) 
    ON DELETE CASCADE
);
```