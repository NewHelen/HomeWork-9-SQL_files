--Завдання №4 - знайти клієнта з найбільшою кількістю проєктів
SELECT c.ID, c.NAME, COUNT(p.ID) AS project_count
FROM client c
LEFT JOIN project p ON c.ID = p.CLIENT_ID
GROUP BY c.ID, c.NAME
ORDER BY project_count DESC;