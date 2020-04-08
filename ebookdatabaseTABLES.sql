CREATE TABLE IF NOT EXISTS Book (
book_id INT, 
bookgenre INT,
booksalesprice INT,
date_on_market VARCHAR(255),
author_id INT,
publisherid INT
);

SELECT  Book.book_id as "BooK ID",
		Book.bookgenre as "Book Genre",
        Book.booksalesprice as "Book Sales Price",
        Book.date_on_market as "Date On Market",
        Book.author_id as "Author ID",
		Book.publisherid as "Publisher ID"
FROM Book;

CREATE TABLE IF NOT EXISTS ReadingSession (
member_id VARCHAR(255),
book_id INT,
Percentage_Comp INT,
reading_time_date VARCHAR(255)
);

SELECT  ReadingSession.member_id as "Member ID",
		ReadingSession.book_id as "BooK ID",
        ReadingSession.Percentage_Comp as "Percentage Completed",
        ReadingSession.reading_time_date as "Reading Time Date"
FROM ReadingSession;

CREATE TABLE IF NOT EXISTS Customer (
member_id VARCHAR(255),
gender INT,
DOB VARCHAR(255)
);

SELECT  Customer.member_id as "Member ID",
		Customer.gender as "Gender",
        Customer.DOB as "Date of Birth"
FROM Customer;

CREATE TABLE IF NOT EXISTS Review (
Review_ID INT,
member_id VARCHAR(255),
book_id INT,
review_rating INT
);

SELECT  Review.Review_ID as "Review ID",
		Review.member_id as "Member ID",
		Review.book_id as "Book ID",
        Review.review_rating as "Review Rating"
FROM Review;













