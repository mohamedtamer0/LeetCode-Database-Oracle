/* Formatted on 7/20/2023 8:02:30 PM (QP5 v5.326) */
  SELECT id,
         movie,
         description,
         rating
    FROM cinema
   WHERE MOD (id, 2) > 0 AND description != 'boring'
ORDER BY rating DESC;