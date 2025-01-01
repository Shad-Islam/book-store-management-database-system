-- Active: 1734776537871@@127.0.0.1@3306@Book store management system
-- author table
CREATE Table authors(
    author_id INT PRIMARY KEY AUTO_INCREMENT,   
    author_name VARCHAR(100) NOT NULL,
    author_email VARCHAR(100) NOT NULL
);

-- book table
CREATE Table books(
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    book_title VARCHAR(100) NOT NULL,
    book_price DECIMAL(10,2) NOT NULL,
    stock_quantity INT NOT NULL,
    author_id INT NOT NULL,

    FOREIGN KEY (author_id) REFERENCES authors(author_id)  
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

--customer table
CREATE TABLE customers(
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100) NOT NULL,
    customer_email VARCHAR(100) NOT NULL,
    customer_phone VARCHAR(100) NOT NULL
);

--orders table
CREATE TABLE orders(
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE NOT NULL,
    customer_id INT NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL,

    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
)

--order details table
CREATE TABLE order_details(
    order_details_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT NOT NULL,
    book_id INT NOT NULL,
    quantity INT NOT NULL,

    FOREIGN KEY (order_id) REFERENCES orders(order_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (book_id) REFERENCES books(book_id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
)