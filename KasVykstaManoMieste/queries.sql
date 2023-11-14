
-- how many likes an event has
SELECT e.eventName, ec.eventCategoryName , u.UserName, ut.userTypeName,  COALESCE(COUNT(uel.eventID)) AS likes
FROM Event e
JOIN User u ON e.eventCreatorUserId = u.UserId
JOIN EventCategory ec ON e.eventCategoryId = ec.eventCategoryId
JOIN UserType ut ON u.UserTypeId = ut.UserTypeId
LEFT JOIN UserEventLikes uel ON e.eventId = uel.eventID
GROUP BY e.eventId

-- events that got created by user's who have Lover in their UserName
SELECT u.UserName, e.eventName
FROM Event e
JOIN User u on e.eventCreatorUserId = u.UserId
WHERE u.UserName LIKE '%Lover%'

--how many events a user created
select u.UserName, count(e.eventId) as EventsCreated
FROM User u
JOIN Event e  on u.UserId = e.eventCreatorUserId
GROUP BY u.UserId


update Event
join User u on Event.eventCategoryId = u.UserId
set eventCreatorUserId = 18
where u.UserName = 'SuperAdmin45'


SELECT *
FROM Event, User
WHERE Event.eventCreatorUserId = User.userId
  AND table1.column2 = 'some_value'
  AND table2.column3 = 'another_value';


-- update category name of category with eventCategoryId=2 if the user with userId=5 is an admin
update EventCategory ec
set ec.eventCategoryName = 'new category name'
where ec.eventCategoryId = 2
AND 1 = (select u.userTypeId
        from User u
        where u.userId = 5
        limit 1
        )

