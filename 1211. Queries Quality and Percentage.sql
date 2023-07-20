/* Formatted on 7/20/2023 8:10:27 PM (QP5 v5.326) */
  SELECT query_name,
         ROUND (AVG (rating / position), 2)
             quality,
         ROUND (
             COUNT (CASE WHEN rating < 3 THEN 1 END) / COUNT (query_name) * 100,
             2)
             poor_query_percentage
    FROM queries
GROUP BY query_name;