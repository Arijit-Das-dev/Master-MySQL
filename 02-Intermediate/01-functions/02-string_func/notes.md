## String functions
- We use string functions for analysing chatagorical columns in a a dataset.
- By the use of this functions we can clean, analyse and transform chatagorical columns.

### List of string functions :
```
STRING FUNCTIONS
│
├── Combine
│   ├── CONCAT()            <- Joins two seperate strings into ones
│   └── CONCAT_WS()         <- Joins two strings with a seperator
│
├── Case
│   ├── UPPER()
│   └── LOWER()
│
├── Clean
│   ├── TRIM()
│   ├── LTRIM()
│   ├── RTRIM()
│   └── REPLACE()
│
├── Extract
│   ├── LEFT()
│   ├── RIGHT()
│   ├── SUBSTRING()
│   └── SUBSTRING_INDEX()
│
├── Search
│   ├── LOCATE()
│   ├── INSTR()
│   └── POSITION()
│
├── Measure
│   ├── LENGTH()
│   └── CHAR_LENGTH()
│
├── Modify
│   ├── LPAD()
│   ├── RPAD()
│   ├── REPEAT()
│   └── REVERSE()
│
└── Compare
    └── STRCMP()
```
## SYNTAX :
### 1. Combine
```sql

-- CONCAT()
 SELECT CONCAT(
    string1,
    string2
);

-- CONCAT_WS()
SELECT CONCAT_WS(
    ' ',
    string1,
    string2
)
```

