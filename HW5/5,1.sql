CREATE VIEW young_users AS
SELECT users.firstname, users.lastname, profiles.hometown, profiles.gender
FROM users
JOIN profiles ON users.id = profiles.user_id
WHERE TIMESTAMPDIFF(YEAR, profiles.birthday, CURDATE()) <= 20;

SELECT * FROM semimar_4.young_users;