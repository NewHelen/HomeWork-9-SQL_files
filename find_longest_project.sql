--Завдання №5 - знайти проєкт з найбільшою тривалістю
SELECT
    ID as PROJECT_ID,
    TIMESTAMPDIFF(MONTH, p.START_DATE, p.FINISH_DATE) AS MONTH_COUNT
FROM
    project p
WHERE
    TIMESTAMPDIFF(MONTH, p.START_DATE, p.FINISH_DATE) = (
        SELECT
            MAX(TIMESTAMPDIFF(MONTH, START_DATE, FINISH_DATE))
        FROM
            project
    );