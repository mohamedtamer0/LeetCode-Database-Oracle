/* Formatted on 19/07/2023 11:54:56 AM (QP5 v5.326) */
  SELECT product_name, year, price
    FROM product JOIN sales ON sales.product_id = product.product_id
GROUP BY product_name, year, price
ORDER BY product_name, year, price