# Data time functions
- It is used to work with data and time in a dataset.


```
CURRENT DATE/TIME
├── CURDATE()
├── CURTIME()
└── NOW()



EXTRACTION
├── YEAR()
├── MONTH()
├── DAY()
├── HOUR()
├── MINUTE()
├── SECOND()
├── MONTHNAME()
└── DAYNAME()



CALCULATION
├── DATEDIFF()


FORMATTING
├── DATE_FORMAT()
```

### CURRENT DATE/TIME
- ***CURDATE()*** = gives the current date. (YYYY-MM-D)
- ***CURTIME()*** = Gives the current time. (h-i-t)
- ***NOW()*** = Gives the current date + current time. (YYYY-MM-D + H-I-S)

```sql
SELECT CURDATE();
SELECT CURTIME();
SELECT NOW();
```

### EXTRACTION
- ***YEAR()*** = Gives the year in numbers.
- ***MONTH()*** = Gives the month in number.
- ***DAY*** = Gives the day in number.
- ***DAYNAME*** = Gives the day in name.
- ***MONTHNAME*** = Gives the month name.
- ***HOUR*** = Gives the hour.
- ***MINUTE*** = Gives time in minutes.
- ***SECOND*** = Gives time in seconds.

```sql
SELECT YEAR(CURDATE());
SELECT MONTH(CURDATE());
SELECT DATE(CURDATE());

SELECT MONTHNAME(CURDATE());
SELECT DAYNAME(CURDATE());

SELECT HOUR(NOW());     -- or HOUR(CURTIME())
SELECT MINUTE(NOW());   -- or MINUTE(CURTIME())
SELECT SECOND(NOW());   -- or SECOND(CURTIME())
```

### CALCULATION
- ***DATEDIFF()*** = Gives the specific difference between dates.

```sql
SELECT DATEDIFF(DAY_FIRST, DAY_LAST) AS total_days;
```