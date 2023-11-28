

ALTER TABLE Event
ADD COLUMN price FLOAT(20) DEFAULT 0

UPDATE Event
SET Event.price = Event.eventCreatorUserId + 1

--1.4
SELECT e.eventName
FROM Event e
JOIN User u ON e.eventCreatorUserId = u.userId
WHERE u.UserName = "Bookworm99"

--1.5
SELECT *
FROM Event e
LEFT JOIN User u ON e.eventCreatorUserId = u.userId

--1.6
UPDATE EventCategory
SET EventCategory.eventCategoryName = "Official"
WHERE EventCategory.eventCategoryId = 3
    AND (SELECT u.userTypeId
        FROM User u
        where u.userId = 1) = 1

--2.1
SELECT *
FROM Event e
WHERE e.eventTime < NOW()

--2.2
SELECT *
FROM Event e
WHERE e.eventTime > NOW()
    AND e.eventLocation = "Science Center"

--2.3

SELECT *
FROM Event e
ORDER BY e.price, e.eventLocation
LIMIT 5

--2.4

SELECT AVG(e.price) AS averagePrice, e.eventLocation
FROM Event e
GROUP BY e.eventLocation


--2.5

SELECT *
FROM Event e
JOIN EventCategory ec ON e.eventCategoryId = ec.eventCategoryId
WHERE e.eventTime < NOW()
    AND ec.eventCategoryName = "Theatre"

--2.6

SELECT *
FROM Event e
WHERE e.eventTime > NOW()
    AND e.eventLocation = "Science Center"

--2.7

SELECT e.eventName, COALESCE(COUNT(uel.eventID)) AS likes
FROM Event e
JOIN User u ON e.eventCreatorUserId = u.UserId
JOIN EventCategory ec ON e.eventCategoryId = ec.eventCategoryId
JOIN UserType ut ON u.UserTypeId = ut.UserTypeId
LEFT JOIN UserEventLikes uel ON e.eventId = uel.eventID
GROUP BY e.eventId
ORDER BY likes DESC

--2.8

SELECT *
FROM Event e
WHERE e.price > 10

--2.9

