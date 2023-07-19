/* Formatted on 19/07/2023 12:14:55 PM (QP5 v5.326) */
SELECT name, bonus
  FROM employee LEFT JOIN bonus ON employee.empid = bonus.empid
 WHERE bonus IS NULL OR bonus < 1000