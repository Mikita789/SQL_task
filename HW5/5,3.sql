SELECT
  id,
  created_at,
  LEAD(created_at) OVER (ORDER BY created_at) - created_at AS time_difference
FROM
  messages
ORDER BY
  created_at
