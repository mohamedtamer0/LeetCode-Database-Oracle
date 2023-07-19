/* Formatted on 19/07/2023 10:19:08 AM (QP5 v5.326) */
  SELECT author_id     AS id
    FROM views
   WHERE author_id = viewer_id
GROUP BY author_id
ORDER BY author_id