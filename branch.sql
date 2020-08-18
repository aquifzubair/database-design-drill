CREATE TABLE branch
(
    branch_id INT PRIMARY KEY,
    branch_name VARCHAR(100)
);


CREATE TABLE branch_address
(
    address_id INT PRIMARY KEY,
    branch_address VARCHAR(100),
    branch_id INT,
    FOREIGN KEY(branch_id) REFERENCES branch(branch_id)
);


CREATE TABLE book_details
(
    book_id INT PRIMARY KEY,
    book_title VARCHAR(100),
    isbn BIGINT,
    num_of_copies INT,
    publisher_id INT,
    FOREIGN KEY(pulisher_id) REFERENCES publisher_details(publisher_id)
);


CREATE TABLE publisher_details
(
    publisher_id INT PRIMARY KEY,
    publisher_name VARCHAR(100)
);


CREATE TABLE autor_detail
(
    author_id INT PRIMARY KEY,
    author_name VARCHAR(100)
);


CREATE TABLE book_author 
(
    book_id INT,
    author_id INT,
    FOREIGN KEY(author_id) REFERENCES author_detail(author_id),
    FOREIGN KEY(book_id) REFERENCES book_details(book_id),
)


CREATE TABLE books_in_branch 
(
    book_id INT,
    branch_id INT,
    FOREIGN KEY(book_id) REFERENCES book_details(book_id),
    FOREIGN KEY(branch_id) REFERENCES branch(branch_id) 
)