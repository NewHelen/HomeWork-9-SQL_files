--Завдання №3 - знайти працівника з найбільшою заробітною платою
SELECT *
FROM worker
WHERE SALARY = (SELECT MAX(SALARY) FROM worker);
