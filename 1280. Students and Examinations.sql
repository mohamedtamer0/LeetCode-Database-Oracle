/* Formatted on 19/07/2023 12:39:33 PM (QP5 v5.326) */
  SELECT s.student_id,
         s.student_name,
         u.subject_name,
         CASE WHEN e.counter IS NULL THEN 0 ELSE e.counter END
             AS attended_exams
    FROM Students s
         CROSS JOIN Subjects u
         LEFT JOIN
         (  SELECT student_id, subject_name, COUNT (student_id) AS counter
              FROM Examinations
          GROUP BY student_id, subject_name) e
             ON e.student_id = s.student_id AND e.subject_name = u.subject_name
ORDER BY s.student_id, u.subject_name;