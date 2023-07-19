/* Formatted on 19/07/2023 12:09:05 PM (QP5 v5.326) */
SELECT ww.id     AS "Id"
  FROM weather  ww
       JOIN weather w
           ON     ww.recordDate - w.recordDate = 1
              AND ww.Temperature > w.Temperature;