/* Formatted on 7/20/2023 7:53:51 PM (QP5 v5.326) */
SELECT e1.Name
  FROM Employee  e1
       JOIN (  SELECT ManagerId
                 FROM Employee
             GROUP BY ManagerId
               HAVING COUNT (ManagerId) >= 5) e2
           ON e1.Id = e2.ManagerId;