-- Insert sample books (at least 10 records)
INSERT INTO BOOKS (book_author, book_status, title, book_category)
VALUES ('J.K. Rowling', 'A', 'Harry Potter and the Philosopher''s Stone', 'Fantasy');

INSERT INTO BOOKS (book_author, book_status, title, book_category)
VALUES ('George Orwell', 'A', '1984', 'Science Fiction');

INSERT INTO BOOKS (book_author, book_status, title, book_category)
VALUES ('Harper Lee', 'A', 'To Kill a Mockingbird', 'Classic Literature');

INSERT INTO BOOKS (book_author, book_status, title, book_category)
VALUES ('Jane Austen', 'A', 'Pride and Prejudice', 'Romance');

INSERT INTO BOOKS (book_author, book_status, title, book_category)
VALUES ('F. Scott Fitzgerald', 'A', 'The Great Gatsby', 'Classic Literature');

INSERT INTO BOOKS (book_author, book_status, title, book_category)
VALUES ('Agatha Christie', 'A', 'Murder on the Orient Express', 'Mystery');

INSERT INTO BOOKS (book_author, book_status, title, book_category)
VALUES ('Stephen King', 'A', 'The Shining', 'Horror');

INSERT INTO BOOKS (book_author, book_status, title, book_category)
VALUES ('Robert C. Martin', 'A', 'Clean Code', 'Programming');

INSERT INTO BOOKS (book_author, book_status, title, book_category)
VALUES ('Douglas Adams', 'A', 'The Hitchhiker''s Guide to the Galaxy', 'Science Fiction');

INSERT INTO BOOKS (book_author, book_status, title, book_category)
VALUES ('Dan Brown', 'A', 'The Da Vinci Code', 'Thriller');

INSERT INTO BOOKS (book_author, book_status, title, book_category)
VALUES ('J.R.R. Tolkien', 'A', 'The Lord of the Rings', 'Fantasy');

INSERT INTO BOOKS (book_author, book_status, title, book_category)
VALUES ('Paulo Coelho', 'A', 'The Alchemist', 'Philosophy');

-- Insert sample members (at least 10 records)
INSERT INTO MEMBERS (first_name, last_name, member_status)
VALUES ('Alice', 'Johnson', 'R');

INSERT INTO MEMBERS (first_name, last_name, member_status)
VALUES ('Bob', 'Smith', 'R');

INSERT INTO MEMBERS (first_name, last_name, member_status)
VALUES ('Charlie', 'Brown', 'R');

INSERT INTO MEMBERS (first_name, last_name, member_status)
VALUES ('Diana', 'Wilson', 'R');

INSERT INTO MEMBERS (first_name, last_name, member_status)
VALUES ('Edward', 'Davis', 'R');

INSERT INTO MEMBERS (first_name, last_name, member_status)
VALUES ('Fiona', 'Miller', 'R');

INSERT INTO MEMBERS (first_name, last_name, member_status)
VALUES ('George', 'Taylor', 'R');

INSERT INTO MEMBERS (first_name, last_name, member_status)
VALUES ('Hannah', 'Anderson', 'R');

INSERT INTO MEMBERS (first_name, last_name, member_status)
VALUES ('Ivan', 'Thomas', 'R');

INSERT INTO MEMBERS (first_name, last_name, member_status)
VALUES ('Julia', 'Martinez', 'R');

INSERT INTO MEMBERS (first_name, last_name, member_status)
VALUES ('Kevin', 'Garcia', 'R');

INSERT INTO MEMBERS (first_name, last_name, member_status)
VALUES ('Laura', 'Rodriguez', 'R');

-- Insert sample book issues (at least 10 records)
INSERT INTO book_issues (book_id, member_id, issue_date, return_date_exp, issue_status)
VALUES (1, 1, '2024-12-15', '2024-12-29', 'P');

INSERT INTO book_issues (book_id, member_id, issue_date, return_date_exp, issue_status)
VALUES (2, 2, '2024-12-10', '2024-12-24', 'R');

INSERT INTO book_issues (book_id, member_id, issue_date, return_date_exp, issue_status)
VALUES (3, 3, '2024-12-20', '2025-01-03', 'P');

INSERT INTO book_issues (book_id, member_id, issue_date, return_date_exp, issue_status)
VALUES (4, 4, '2024-12-05', '2024-12-19', 'R');

INSERT INTO book_issues (book_id, member_id, issue_date, return_date_exp, issue_status)
VALUES (5, 5, '2024-12-18', '2025-01-01', 'P');

INSERT INTO book_issues (book_id, member_id, issue_date, return_date_exp, issue_status)
VALUES (6, 6, '2024-12-12', '2024-12-26', 'R');

INSERT INTO book_issues (book_id, member_id, issue_date, return_date_exp, issue_status)
VALUES (7, 7, '2024-12-22', '2025-01-05', 'P');

INSERT INTO book_issues (book_id, member_id, issue_date, return_date_exp, issue_status)
VALUES (8, 8, '2024-12-08', '2024-12-22', 'R');

INSERT INTO book_issues (book_id, member_id, issue_date, return_date_exp, issue_status)
VALUES (9, 9, '2024-12-25', '2025-01-08', 'P');

INSERT INTO book_issues (book_id, member_id, issue_date, return_date_exp, issue_status)
VALUES (10, 10, '2024-12-14', '2024-12-28', 'R');

INSERT INTO book_issues (book_id, member_id, issue_date, return_date_exp, issue_status)
VALUES (11, 11, '2024-12-28', '2025-01-11', 'P');

INSERT INTO book_issues (book_id, member_id, issue_date, return_date_exp, issue_status)
VALUES (12, 12, '2024-12-16', '2024-12-30', 'R');

-- Update book status for issued books
UPDATE books SET book_status = 'N' WHERE book_id IN (1, 3, 5, 7, 9, 11);

COMMIT;
