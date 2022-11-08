ALTER TABLE book ADD FOREIGN KEY (pub_id)
REFERENCES publisher(pub_id);

ALTER TABLE book ADD FOREIGN KEY (category_id)
REFERENCES category(category_id);

ALTER TABLE borrowing_book ADD FOREIGN KEY (member_id)
REFERENCES member(member_id);

ALTER TABLE borrowing_book ADD FOREIGN KEY (book_id)
REFERENCES book(book_id);

SELECT name FROM member WHERE join_date > '2000-9-1';

SELECT * FROM member WHERE join_date BETWEEN '1995-10-1' AND '2019-10-1';

SELECT * FROM book as b JOIN publisher as p ON b.pub_id = p.pub_id WHERE (p.name LIKE '%Oxford%') OR (b.price BETWEEN '15' and '20');

SELECT b.title FROM member as m JOIN borrowing_book as br ON m.member_id = br.member_id
JOIN book as b on b.book_id = br.book_id WHERE m.name LIKE '%Scot Reinger%';

SELECT m.name FROM member as m JOIN borrowing_book as br ON m.member_id = br.member_id
WHERE br.borrow_date LIKE '%2019%';