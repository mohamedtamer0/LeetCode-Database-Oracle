/* Formatted on 19/07/2023 11:58:46 AM (QP5 v5.326) */
  SELECT customer_id, COUNT (Visits.visit_id) AS count_no_trans
    FROM visits
         LEFT JOIN Transactions ON Visits.visit_id = Transactions.visit_id
   WHERE Transactions.visit_id IS NULL
GROUP BY customer_id;