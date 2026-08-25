# UNION & UINION ALL
- **UNION** - Used to combine or concatenate rows of multiple tables. It avoids the duplicate rows.
    - ``suppose table 1 contains the same data as table 2, it will avoid those values/rows.``
    - ``It takes those duplicate rows into the new table in a single row.``

- **UNION ALL** - Used to combine or concatenate multiple tables. It includes duplicate rows.
---

## MINDMAP
```
Table 1 -> customers 
--------------------
 ---------------------------------------
|customer_id      |       customer_name |
|-----------      |       --------------|
|1                |           Abhay     |
|2                |           Rahul     |
|3                |           Sneha     |
|4                |           Puja      |
|5                |           Kunal     |
-----------------------------------------


Table 2 -> products  
--------------------
 ---------------------------------------
|prouct_id        |       product_name  |
|---------        |       --------------|
|101              |                A    |
|102              |                B    | 
|103              |                C    |
|104              |                D    |
|105              |                E    |
-----------------------------------------


**After combining, table + table 2

New Table
-----------------------------------------
|customer_id      |       customer_name |
|-----------      |       --------------|
|1                |           Abhay     |
|2                |           Rahul     | 
|3                |           Sneha     |
|4                |           Puja      |
|5                |           Kunal     |
|101              |                A    |
|102              |                B    | 
|103              |                C    |
|104              |                D    |
|105              |                E    |
-----------------------------------------
```

## UNION
```sql
SELECT customer_id, customer_name FROM customers
UNION
SELECT product_id, product_name FROM products;
``` 
- This will removes duplicates and keeps the unique rows.


## UNION ALL
```sql
SELECT customer_id, customer_name FROM customers
UNION ALL
SELECT product_id, product_name FROM products;
``` 
- This will allow duplicates.


## Workflow :
- If you want to see unique rows, use **UNION**.
- If you want to see all rows, use **UNION ALL**.