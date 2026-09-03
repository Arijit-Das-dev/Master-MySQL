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

### NOTE :
- **VIEWS** does not allow any duplicate columns during joining tables.

```sql
-- wrong approach - here you are taking two same columns from both tables without using aliases.
-- error :  Duplicate column name 'customer_id'.

CREATE INDEX all_tables AS
SELECT 

p.product_id,   -- DUPLICATE
p.product_name,
o.product_id,   -- DUPLICATE
o.order_date

FROM product p
JOIN orders o

ON p.product_id = o.product_id;
```

```sql
-- correct approach - always use aliases during selecting column names.

CREATE INDEX all_tables AS
SELECT 

p.product_id AS product_id,   -- DUPLICATE
p.product_name AS product_name,
o.product_id AS product_id,   -- DUPLICATE
o.order_date AS order_date

FROM product p
JOIN orders o

ON p.product_id = o.product_id;
```