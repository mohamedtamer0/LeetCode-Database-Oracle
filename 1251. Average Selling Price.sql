/* Formatted on 7/20/2023 8:03:27 PM (QP5 v5.326) */
  SELECT product_id,
         ROUND (SUM (price * units) / SUM (units), 2)     AS average_price
    FROM unitssold JOIN prices USING (product_id)
   WHERE purchase_date >= start_date AND purchase_date <= end_date
GROUP BY product_id;