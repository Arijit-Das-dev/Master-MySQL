# MATH FUNCTIONS

```
MATH
├── ROUND()
├── CEIL()
└── FLOOR()
└── TRUNC()
```

### MATH
- ***ROUND()*** = Gives rounded figure.
- ***CEIL()*** = Gives the maximum value.
- ***FLOOR()*** = Gives the minimum/integer value.
- ***ABS()*** = Gives the absolute value.
- ***TRUNC()*** = Truncate the decimale part.

```sql
SELECT 
    ROUND(salary) AS rounded_figure,
    CEIL(salary) AS absolute_salary,
    FLOOR(salary) AS minimum_salary,
    ABS(salary) AS absolute_salary,
    TRUNC(salary) AS actual_salary
FROM users;
```