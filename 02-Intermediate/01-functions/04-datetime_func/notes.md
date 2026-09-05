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
├── TIMEDIFF()
├── TIMESTAMPDIFF()


FORMATTING
├── DATE_FORMAT()
└── EXTRACT()
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
- 