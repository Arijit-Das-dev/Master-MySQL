# GROUP BY
- **GROUP BY** clause is used to group multiple rows into one row.
- It is specially used for chatagorical columns.
- It is used specially with aggregate functions -
    - ***sum()***
    - ***min()***
    - ***max()***
    - ***avg()***
    - ***count()***

## Example :
- GROUP BY Example: Average Salary by Gender
```sql

SELECT gender, AVG(salary) AS average_salary
FROM users
GROUP BY gender;
```

# HAVING
- **HAVING** clause specially used with **GROUP BY** clause for filterng among grouped rows.
- We can not use **WHERE** clause with **GROUP BY**.
- We can use **WHERE** before **GROUP BY** clause and **HAVING** after groups are formed.

## Example :
```sql

SELECT gender, AVG(salary) AS average_salary
FROM users
GROUP BY gender
HAVING average_salary > 60000;
```