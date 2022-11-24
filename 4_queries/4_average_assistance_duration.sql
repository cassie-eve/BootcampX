SELECT AVG(total_duration) as average_total_duration 
FROM (
  SELECT cohorts.name as cohort, SUM(assistance_requests.completed_at - assistance_requests.started_at) AS total_duration
  FROM assistance_requests
  JOIN students on students.id = assistance_requests.student_id
  JOIN cohorts on cohorts.id = students.cohort_id
  GROUP BY cohorts.name
  ORDER BY SUM(assistance_requests.completed_at - assistance_requests.started_at)
) as total_duration;