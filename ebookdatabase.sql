-- DROP TABLE IF EXISTS Book;
CREATE TABLE IF NOT EXISTS Book (
book_id INT, 
bookgenre INT,
booksalesprice INT,
date_on_market VARCHAR(255),
author_id INT,
publisher_id INT
);

--  DROP TABLE IF EXISTS ReadingSession;
CREATE TABLE IF NOT EXISTS ReadingSession (
member_id VARCHAR(255),
book_id INT,
Percentage_Comp INT,
reading_time_date VARCHAR(255)
);

-- DROP TABLE IF EXISTS Customer;
CREATE TABLE IF NOT EXISTS Customer (
member_id VARCHAR(255),
gender INT,
DOB VARCHAR(255)
);

-- DROP TABLE IF EXISTS Review;
CREATE TABLE IF NOT EXISTS Review (
Review_ID INT,
member_id INT,
book_id INT,
review_rating INT
);



