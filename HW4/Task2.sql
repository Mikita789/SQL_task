SELECT gender, COUNT(likes.user_id) as likes FROM profiles
JOIN likes ON likes.user_id = profiles.user_id
GROUP BY gender
;