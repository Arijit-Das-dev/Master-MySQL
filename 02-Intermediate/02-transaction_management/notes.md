# Transaction Management

## AutoCommit
- By default MySQL works in autocommit mode, means it saves all your changes permanantly in the database by deafult.
- Sometimes it becomes a disaster when some critical error happens and that error saved permanantly in the database.
- That's why we have to manage transactions while quering in a database.

## Workflow
- At first we use this query - **SET autocommit = 0;**

    - By doing this, our queries does not save in the database parmanantly until we change it.
    - After that we do some important critical queries.

- If any error happens after the query, we use **ROLLBACK;**

    - All the errors in the database get reset by this query.
    - This query takes you at the starting phase where you started those critical quering.

- If no error happens then you can simply use this query - **COMMIT;**

    - By this query your all queries get saved permanantly in the database.

- After all successfull queries you have to use **SET autocommit = 1;**

    - By this query we are turning on the autocommit mode again.

## Queries
```sql

-- turning off autocommit
SET autocommit = 0;


-- updating table's data in a wrong way
UPDATE users
SET salary = 10;

-- error

-- now we have to use this query to reset changes
ROLLBACK;

-- updating again
UPDATE users
SET salary = salary + 10000
WHERE salary <= 10000;

-- now commit
COMMIT;

-- Now reset the autocommit mode
SET autocommit = 1;
```