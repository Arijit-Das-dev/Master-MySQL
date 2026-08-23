# FOREIGN KEY
- A FOREIGN KEY in a table used to Link between two tables. 
- It maintains data intigrity.
- Two tables must have a common column which matches it's values.

## SYNTAX :
```sql
-- first ensure you are creating that table inside the same database
USE database_name;

-- create table
CREATE TABLE address(

    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    states VARCHAR(20) NOT NULL,
    cities VARCHAR(20) NOT NULL,
    streets VARCHAR(20) NOT NULL,
    pincode VARCHAR(10),
    
    -- setting up foreign key
    CONSTRAINT fk_user 
    FOREIGN KEY(user_id) 
    REFERENCES users(id) 
    ON DELETE CASCADE
);
```
**NOTE 1 :**
- What is ***CONSTRAINT fk_user*** ?
  = When we are setting a column FOREIGN KEY, we set a CONSTRAINT of that column so that we can modify through it anytime.

**NOTE 2 :**
- What is ***ON DELETE CASCADE*** ?
  = ON DELETE CASCADE is a FOREIGN KEY constraint that is used to control multiple tables.

  - imagine that scenario :
    - You deleted some rows from the ***PARENT TABLE***, simultaniously those rows deleted automatically from the ***CHILD TABLE***. That's why we use ON DELETE CASCADE.

## MINDMAP :
```
        PARENT TABLE                       CHILD TABLE
            |                                   |
        PRIMARY KEY     <- references       FOREIGN KEY
```

## DROP a FOREIGN KEY
```sql
ALTER TABLE users
DROP FOREIGN KEY
fk_user;
```

## ADD a FOREIGN KEY
```sql
ALTER TABLE users
ADD CONSTRAINT fk_user
FOREIGN KEY (user_id)
REFERENCES users(id)
ON DELETE CASCADE;
```