--Завдання №6 - знайти найстаршого та наймолодшого працівника
(SELECT
    'OLDEST' AS TYPE,
    NAME,
    BIRTHDAY
FROM
    worker
WHERE
    BIRTHDAY = (SELECT MIN(BIRTHDAY) FROM worker)
)
UNION ALL
(SELECT
    'YOUNGEST' AS TYPE,
    NAME,
    BIRTHDAY
FROM
    worker
WHERE
    BIRTHDAY = (SELECT MAX(BIRTHDAY) FROM worker)
);