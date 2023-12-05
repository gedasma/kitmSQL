--1.4
SELECT MIN(i.invoiceSum)
FROM Invoice i

--1.5
SELECT CONCAT(c.clientName, " ", c.clientLastName) AS Client,
    SUM(i.invoiceSum) AS TotalSum
FROM Client c
LEFT JOIN Invoice i ON i.receptientClientId = c.clientId
WHERE c.clientId = 2
GROUP BY c.clientId

--1.6

SELECT c.clientId,
    c.clientName,
    c.clientLastName,
    SUM(i.invoiceSum) AS TotalSum
FROM Client c
LEFT JOIN Invoice i ON i.receptientClientId = c.clientId
WHERE c.clientName IN ("Emma", "Jack", "Paul")
GROUP BY c.clientId
ORDER BY TotalSum DESC

--1.7
SELECT c.clientName,
    SUM(i.invoiceSum) AS TotalSum
FROM Client c
LEFT JOIN Invoice i ON i.receptientClientId = c.clientId
GROUP BY c.clientId
HAVING SUM(i.invoiceSum) BETWEEN 43 AND 109

--1.8
SELECT DISTINCT(c.clientName)
FROM Client c
ORDER BY c.clientName ASC

--2.1

SELECT MIN(i.invoiceSum),
    AVG(i.invoiceSum),
    MAX(i.invoiceSum)
FROM Invoice i

--2.2
SELECT *
FROM Client c
WHERE LENGTH(c.clientLastName) = 
    (SELECT max(LENGTH(c.clientLastName)) 
    FROM Client c)

--2.3

SELECT  UPPER(CONCAT(c.clientName, " ", c.clientLastName)) AS klientas
FROM Client c

--2.4

ALTER TABLE Client
ADD active BOOLEAN;

UPDATE Client 
SET active = ROUND(RAND())
WHERE ISNULL(active)

SELECT CASE
        WHEN c.active = 1 THEN "aktyvus"
        ELSE "neaktyvus"
    END AS "kliento statusas"
FROM Client c

--2.5

SELECT c.clientId
FROM Client c
LEFT JOIN Invoice i ON i.receptientClientId = c.clientId
GROUP BY c.clientId
HAVING SUM(i.invoiceSum) > 500