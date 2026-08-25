# MULTIPLE JOINS 
- Suppose there are multiple tables present in a database, and you have to join them based on columns.


## Example :
```
Table 1 -> customers
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


Table 2 -> products
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



Table 3 -> orders
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