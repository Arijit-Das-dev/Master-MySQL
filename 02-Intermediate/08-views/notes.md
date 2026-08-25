# VIEWS

- ***VIEWS*** are the virtual tables which is created by **SELECT** statement.
- It creates a 'live snapshot' of a query.
- It reduces the use of same query.
- It simplifies complex queries.
- It can update itelf simultaniously with updation of tables.
- It is not a another table, it is just a temporary virtual table.

## Syntax :
```sql

-- create view
CREATE VIEW new_ids AS
SELECT * FROM users
WHERE salary = 10000;


-- use view
SELECT * FROM new_ids;
```

## It can update irself.
```sql

-- update existing table
UPDATE users
SET salary = 10000
WHERE name = 'Raj';

-- now select the view
SELECT * FROM new_ids;

-- it will add new rows
```

## MINDMAP
```
CREATE VIEW new_ids AS
SELECT * FROM users
WHERE salary = 10000;

SELECT * FROM new_ids;

------------------------
id      name    salary |
-----------------------|
1       Rahul   10000  |
2       karan   10000  |
------------------------


UPDATE users
SET salary = 10000
WHERE name = 'Raj';


SELECT * FROM new_ids;

------------------------
id      name    salary |
-----------------------|
1       Rahul   10000  |
2       karan   10000  |
4       Raj     10000  |
------------------------
```

## DROP a VIEW
```sql
DROP VIEW new_ids;
```