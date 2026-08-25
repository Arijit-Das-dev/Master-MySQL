-- create view
CREATE VIEW new_ids AS
SELECT * FROM users
WHERE salary = 10000;


-- use view
SELECT * FROM new_ids;

-- updating users
UPDATE users
SET salary = 10000
WHERE name = 'Raj';

-- now select view
SELECT * FROM new_ids;


-- drop view
DROP VIEW new_ids;