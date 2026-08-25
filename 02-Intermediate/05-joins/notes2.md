# MULTIPLE JOINS 
- Suppose there are multiple tables present in a database, and you have to join them based on common columns.
- We joins tables depending on primary keys and foreign keys.
- There will always be a connector table which will store foreign keys containing columns (primary keys of other tables).

## Example :
```
Table 1 -> customers  [primary key -> customer_id]
--------------------
 _______________________________________
|customer_id      |       customer_name |
|-----------      |       --------------|
|1                |           Abhay     |
|2                |           Rahul     | 
|3                |           Sneha     |
|4                |           Puja      |
|5                |           Kunal     |
|_________________|_____________________|


Table 2 -> products  [primary key -> product_id]
--------------------
 _______________________________________
|prouct_id        |       product_name  |
|---------        |       --------------|
|101              |            Abhay    |
|102              |            Rahul    | 
|103              |             Sneha   |
|104              |             Puja    |
|105              |             Kunal   |
|_________________|_____________________|



Table 3 -> orders     [foreign keys -> customer_id, product_id]
--------------------
 __________________________________________
|order_id   |   customer_id |   product_id |
|--------   |   ----------- |   -----------|  
|1001       |        1      |     101      |
|1002       |        2      |     102      |
|1003       |        3      |     103      |
|1004       |        4      |     104      |
|1005       |        5      |     105      |
|___________|_______________|______________|
```
- Customers have primary key **customer_id**.
- products have primary key **products_id**.
- orders have foreign key **customer_id, product_id**.

## Syntax :
- You have to join them based on that syntax -

```sql
-- sql commands
SELECT customers.*, products.*, orders.*
    FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN products p
    ON p.product_id = o.product_id;
```

## MINDMAP :

``customers customer_id -> orders customers_id``
``products product_id -> orders product_id``

- Here orders table contains all the foreign keys. So orders table is the connector of both the tables.


## Workflow :
- Find common table which contains foreign keys.
- Based on that join other tables using primary keys.