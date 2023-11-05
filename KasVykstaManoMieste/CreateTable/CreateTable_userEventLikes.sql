CREATE TABLE UserEventLikes (
    userId INT NOT NULL,
    eventId INT NOT NULL,
    likeState BOOLEAN NULL,
    PRIMARY KEY (userId, eventId),
    FOREIGN KEY (userId) REFERENCES User(userId),
    FOREIGN KEY (eventId) REFERENCES Event(eventId)
);