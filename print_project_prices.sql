--Завдання №7 - вивести вартість кожного проєкту
SELECT
    p.ID AS PROJECT,
    SUM(w.SALARY * TIMESTAMPDIFF(MONTH, p.START_DATE, p.FINISH_DATE)) AS PRICE
FROM
    project p
JOIN
    project_worker pw ON p.ID = pw.PROJECT_ID
JOIN
    worker w ON pw.WORKER_ID = w.ID
GROUP BY
    p.ID
ORDER BY
    PRICE DESC;