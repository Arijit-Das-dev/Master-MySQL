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