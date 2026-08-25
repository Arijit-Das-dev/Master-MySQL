# INDEXES
- **INDEXES** in MySQL used to speed up the data retrieval.
- It became usefull when we want to retrieve data faster.
- MySQL automatically creates **INDEXES** if we dont create it manually.
- There are two types of **INDEXES**.

## Example :
- Suppose you are reading a book and there are total 10 chapters with 500 pages. Then how can you get any specific page or chapter ?
- You can get those pages by the book's INDEX where all the chapters details are given.
- Same as in MySQL, indexes helps use to retrieve specific data from the entire dataset.
- We set INDEXES through some specific columns.

## SHOW INDEXES :
```sql
SHOW INDEXES FROM users;
```
## TYPES :
```
            TYPES
              |
    ---------------------
    |                   |
UNIQUE INDEX        DUPLICATE INDEX
```

## UNIQUE INDEX
- **UNIQUE INDEX** are the columns which does not contains any duplicate values or rows.
    - ***Example*** -> emails, id, adhaar number, pan number.

- **UNIQUE INDEX** are specially used with non-duplicate values.

## DUPLICATE INDEX
-   **DUPLICATE INDEX** are the columns which contains duplicate values or rows.
    - ***Example*** -> name, gender, date_of_birth.

## How to create INDEX ?
```sql

-- UNIQUE INDEX
CREATE UNIQUE INDEX idx_email ON users(email);

-- DUPLICATE INDEX
CREATE INDEX idx_name ON users(name);
```

## Important note :
- We can not use **UNIQUE INDEX** for those columns which contains duplicate rows. we can simply use **CREATE INDEX** just.
- Do not use 'UNIQUE INDEX' on those columns which contains duplicate rows. use 'CREATE INDEX'.
- By default you can use -

```sql
CREATE INDEX idx_email ON users(email);
```

## DROP index 
```sql

-- always specify the index indentifier
ALTER TABLE users
DROP INDEX idx_email;
```