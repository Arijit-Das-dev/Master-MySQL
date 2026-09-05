SELECT name,
    CASE 
        WHEN gender = 'Male' THEN 'M'
        WHEN gender = 'Female' THEN 'F'
    ELSE 'Others'
END
FROM users;