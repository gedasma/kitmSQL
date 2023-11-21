CREATE TABLE Event (
    eventId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    eventName VARCHAR(255) NOT NULL,
    eventCategoryId INT NOT NULL,
    eventTime DATETIME,
    eventLocation VARCHAR(255),
    eventPicture VARCHAR(255),
    eventCreatorUserId INT NOT NULL,
    FOREIGN KEY (eventCategoryId) REFERENCES EventCategory(eventCategoryId),
    FOREIGN KEY (eventCreatorUserId) REFERENCES User(userId)
);