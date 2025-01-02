-- Insert data into authors table
INSERT INTO authors (author_name, author_email) VALUES
('J.K. Rowling', 'jk.rowling@example.com'),
('George R.R. Martin', 'george.martin@example.com'),
('J.R.R. Tolkien', 'tolkien@example.com'),
('Agatha Christie', 'agatha.christie@example.com'),
('Stephen King', 'stephen.king@example.com'),
('Dan Brown', 'dan.brown@example.com'),
('Isaac Asimov', 'isaac.asimov@example.com'),
('Arthur Conan Doyle', 'arthur.doyle@example.com'),
('Mark Twain', 'mark.twain@example.com'),
('Jane Austen', 'jane.austen@example.com');

-- Insert data into books table
INSERT INTO books (book_title, book_price, stock_quantity, author_id) VALUES
('Harry Potter and the Sorcerer\'s Stone', 19.99, 50, 1),
('A Game of Thrones', 25.99, 30, 2),
('The Hobbit', 15.50, 40, 3),
('Murder on the Orient Express', 12.99, 25, 4),
('The Shining', 18.00, 20, 5),
('The Da Vinci Code', 22.00, 35, 6),
('Foundation', 14.99, 50, 7),
('Sherlock Holmes: The Complete Novels', 30.00, 10, 8),
('Adventures of Huckleberry Finn', 10.99, 60, 9),
('Pride and Prejudice', 9.99, 70, 10);

-- Insert data into customers table
INSERT INTO customers (customer_name, customer_email, customer_phone) VALUES
('John Doe', 'john.doe@example.com', '123-456-7890'),
('Jane Smith', 'jane.smith@example.com', '987-654-3210'),
('Emily Davis', 'emily.davis@example.com', '555-123-4567'),
('Michael Brown', 'michael.brown@example.com', '444-987-6543'),
('Sarah Wilson', 'sarah.wilson@example.com', '333-555-1234'),
('David Johnson', 'david.johnson@example.com', '222-444-5555'),
('Laura Martinez', 'laura.martinez@example.com', '666-777-8888'),
('Chris Taylor', 'chris.taylor@example.com', '111-222-3333'),
('Anna White', 'anna.white@example.com', '999-888-7777'),
('Tom Harris', 'tom.harris@example.com', '888-999-6666');

-- Insert data into orders table
INSERT INTO orders (order_date, customer_id, total_amount) VALUES
('2025-01-01', 1, 39.98),
('2025-01-02', 2, 25.99),
('2025-01-03', 3, 30.00),
('2025-01-04', 4, 18.00),
('2025-01-05', 5, 15.50),
('2025-01-06', 6, 22.00),
('2025-01-07', 7, 12.99),
('2025-01-08', 8, 14.99),
('2025-01-09', 9, 10.99),
('2025-01-10', 10, 9.99);

-- Insert data into order_details table
INSERT INTO order_details (order_id, book_id, quantity) VALUES
(1, 1, 2),
(2, 2, 1),
(3, 8, 1),
(4, 5, 1),
(5, 3, 1),
(6, 6, 1),
(7, 4, 1),
(8, 7, 1),
(9, 9, 1),
(10, 10, 1);

