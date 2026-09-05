SELECT 
    ROUND(salary) AS rounded_figure,
    CEIL(salary) AS absolute_salary,
    FLOOR(salary) AS minimum_salary,
    ABS(salary) AS absolute_salary,
    TRUNC(salary) AS actual_salary
FROM users;