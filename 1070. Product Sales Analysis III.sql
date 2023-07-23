/* Formatted on 7/23/2023 6:33:28 PM (QP5 v5.326) */
SELECT sub.product_id,
       sub.first_year,
       S.quantity,
       S.price
  FROM (  SELECT product_id, MIN (year) AS first_year
            FROM Sales
        GROUP BY product_id) sub,
       Sales  S
 WHERE S.product_id = sub.product_id AND S.year = sub.first_year