/* Formatted on 7/20/2023 8:04:33 PM (QP5 v5.326) */
  SELECT project_id, ROUND (AVG (experience_years), 2) AS average_years
    FROM project JOIN employee ON project.employee_id = employee.employee_id
GROUP BY project_id;