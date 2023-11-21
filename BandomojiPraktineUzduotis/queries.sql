--4
SELECT *
FROM ClientOrder co
LEFT JOIN Client c ON co.clientOrderClientId = c.clientId

--5
SELECT *
FROM Client c
LEFT JOIN ClientOrder co ON co.clientOrderClientId = c.clientId
WHERE co.clientOrderId IS NULL

--6

SELECT c.firstName, c.lastName, count(co.clientOrderId)
FROM Client c
LEFT JOIN ClientOrder co ON co.clientOrderClientId = c.clientId
GROUP BY c.clientId

--7

SELECT c.firstName, c.lastName, count(co.clientOrderId) AS orderCount
FROM Client c
LEFT JOIN ClientOrder co ON co.clientOrderClientId = c.clientId
GROUP BY c.clientId
HAVING orderCount >= 3

--8

UPDATE Client
JOIN (SELECT c.lastName as dupeLastName, count(c.lastName) as count
        FROM Client c
        group by c.lastName
        having count >= 2
        ) temp ON temp.dupeLastName = Client.lastName
SET Client.lastName = upper(Client.lastName)

--9

SELECT *
FROM ClientOrder co
WHERE co.clientOrderSum > 100

--10

SELECT c.firstName,
    c.lastName,
    CASE 
        WHEN count(co.clientOrderId) > 1 THEN count(co.clientOrderId)
        ELSE "nera uzsakymu"
    END  AS Uzsakymai
FROM Client c
LEFT JOIN ClientOrder co ON co.clientOrderClientId = c.clientId
GROUP BY c.clientId