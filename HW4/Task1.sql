SELECT users.id, users.firstname, users.lastname, profiles.birthday, COUNT(likes.user_id) as likes FROM users
JOIN profiles ON profiles.user_id = users.id
JOIN likes ON  users.id = likes.user_id
WHERE (birthday < '2011-08-21') 
GROUP BY id
ORDER BY likes DESC;