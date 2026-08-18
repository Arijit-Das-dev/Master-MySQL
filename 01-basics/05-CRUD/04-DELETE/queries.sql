-- DELETE - To delete rows in dataset.

-- Delete the row of id 1.
DELETE FROM users 
WHERE id = 1;



-- Delete the row where email = 'abc@gmail.com'
DELETE FROM users 
WHERE email = 'abc@gmail.com';



-- Delete a single row by multiple condition.
-- Better to use single condition for single row.
-- AND used for multiple conditions to delete the same row which is present in any location in a dataset.
DELETE FROM users
WHERE id = 1 AND email = 'xyz@gmail.com';



-- Delete multiple rows by multiple condition.
DELETE FROM users
WHERE id = 1
OR
email = 'vgt@gamail.com'



-- Delete multiple rows.
DELETE FROM users
WHERE gender = 'M';