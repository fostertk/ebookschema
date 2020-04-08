-- Reviews of all ebooks
SELECT  review.review_id as "Review ID",
		session.member_id as "Member ID",
		session.book_id as "Book ID",
		session.Percentage_Comp / 100 as "Percentage Completed",
		review.review_rating as "Review Rating"
FROM ReadingSession as session
LEFT JOIN Review as review
		ON session.book_id = review.book_id
		AND session.member_id = review.member_id;

-- Reviews when customer has not completed Ebook 
SELECT  review.review_id as "Review ID",
		session.member_id as "Member ID",
		session.book_id as "Book ID",
		session.Percentage_Comp / 100 as "Percentage Completed",
		review.review_rating as "Review Rating"
FROM ReadingSession as session
LEFT JOIN Review as review
		ON session.book_id = review.book_id
		AND session.member_id = review.member_id
WHERE session.Percentage_Comp < 100;


-- Reviews when customer has completed Ebook
SELECT  review.review_id as "Review ID",
		session.member_id as "Member ID",
		session.book_id as "Book ID",
		session.Percentage_Comp / 100 as "Percentage Completed",
		review.review_rating as "Review Rating"
FROM ReadingSession as session
LEFT JOIN Review as review
		ON session.book_id = review.book_id
		AND session.member_id = review.member_id
WHERE session.Percentage_Comp = 100;

-- Demographic of Customer 
SELECT cust.member_id as "Member ID",
IF	(cust.gender < 1, 'M', 'F') as "Gender",
	cust.DOB as "Birthdate",
	session.Percentage_comp as "Percentage Complete" ,
	review.review_id as "Review ID",
	review.review_rating as "Review Rating"
FROM Customer as cust
RIGHT JOIN ReadingSession as session
	ON cust.member_id = session.member_id
RIGHT JOIN Review as review
	ON session.book_id = review.book_id 
	AND session.member_id = review.member_id;

 -- Average Review Rating of all Ebooks 
SELECT AVG(Review_rating) as average
FROM Review;

 -- Average Revieww Rating of Completed Ebooks
SELECT AVG(results.review_rating) as "Average Review Rating of Completed Ebooks" FROM
	(
		SELECT review.review_id, session.member_id, session.book_id, session.Percentage_Comp, review.review_rating
		FROM ReadingSession as session
		LEFT JOIN Review as review
			ON session.book_id = review.book_id
			AND session.member_id = review.member_id
		WHERE session.Percentage_Comp = 100
    ) as results;

-- Average Review Rating of nonCompleted Ebooks 
SELECT AVG(results.review_rating) as "Average Review Rating of not Completed Ebooks" FROM
	(
		SELECT review.review_id, session.member_id, session.book_id, session.Percentage_Comp, review.review_rating
		FROM ReadingSession as session
		LEFT JOIN Review as review
			ON session.book_id = review.book_id
			AND session.member_id = review.member_id
		WHERE session.Percentage_Comp < 100
	) as results;
    