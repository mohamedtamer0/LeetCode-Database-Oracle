/* Formatted on 7/23/2023 6:27:05 PM (QP5 v5.326) */
  SELECT teacher_id, COUNT (DISTINCT subject_id) AS cnt
    FROM Teacher
GROUP BY teacher_id
ORDER BY NULL;