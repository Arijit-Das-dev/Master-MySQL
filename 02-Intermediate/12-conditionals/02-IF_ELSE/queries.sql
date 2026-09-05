SELECT gender,
IF(gender='female', True, False) AS is_female
FROM users;