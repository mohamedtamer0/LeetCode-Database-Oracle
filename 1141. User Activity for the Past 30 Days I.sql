/* Formatted on 7/23/2023 6:31:10 PM (QP5 v5.326) */
  SELECT TO_CHAR (a.activity_date, 'YYYY-MM-DD')     AS day,
         COUNT (DISTINCT user_id)                    AS active_users
    FROM Activity a
   WHERE     a.activity_date <= TO_DATE ('2019-07-27', 'YYYY-MM-DD')
         AND a.activity_date > TO_DATE ('2019-07-27', 'YYYY-MM-DD') - 30
GROUP BY a.activity_date
ORDER BY 1