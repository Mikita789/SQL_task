SELECT
  u.firstname,
  u.lastname,
  COUNT(m.id) AS message_count,
  DENSE_RANK() OVER (ORDER BY COUNT(m.id) DESC) AS ranking_position
FROM
  users u
JOIN
  messages m ON u.id = m.from_user_id
GROUP BY
  u.id
ORDER BY
  message_count DESC;