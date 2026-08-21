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
│   ├── UPPER()             <- convert into upper case
│   └── LOWER()             <- convert into lower case
│
├── Clean
│   ├── TRIM()              <- removes leading and trailing spaces
│   ├── LTRIM()             <- removes left side spaces
│   ├── RTRIM()             <- removes right side spaces
│   └── REPLACE()           <- replaces a string with another string
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

### 2. Case
- Case functions are specially used in data cleaning.

```sql

-- LOWER()
SELECT lower(column) AS column_names FROM users;

-- UPPER()
SELECT upper(column) AS column_names FROM users;

-- To check for upper case letters
SELECT names FROM users WHERE names != lower(names);

-- update those namess which starts with upper case letters
UPDATE users SET names = lower(names);
```

### 3. Clean
- Cleaning methods are specially used for data cleaning

```sql

-- check for leading or trailing spaces
SELECT names FROM users WHERE names != TRIM(names);

-- check for left side spaces
SELECT names FROM users WHERE names != LTRIM(names);

-- check for right side spaces
SELECT names FROM users WHERE names != RTRIM(names);

-- check for special characters
SELECT names FROM users WHERE names REGEXP('[^A-Za-z]');

-- check for numbers
SELECT names FROM users WHERE names REGEXP('[0-9]');
```