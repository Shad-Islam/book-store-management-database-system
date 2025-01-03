-- books with their authors
SELECT
    books.book_id,
    books.book_title,
    books.book_price,
    books.stock_quantity,
    authors.author_name,
    authors.author_email
FROM
    books
LEFT JOIN authors ON books.author_id = authors.author_id;

-- select specific columns
SELECT
    customer_name,
    customer_email,
    customer_phone
FROM
    customers;

-- select conditional customers
SELECT
    customer_id,
    customer_name,
    customer_email,
    customer_phone
FROM
    customers
WHERE
    customer_id = 1;

-- total amount of orders
SELECT 
    SUM(total_amount) AS total_sales
FROM
    orders;

-- top selling books
SELECT
    books.book_title,
    SUM(order_details.quantity) AS total_sold
FROM
    order_details
JOIN 
    books ON order_details.book_id = books.book_id
GROUP BY
    books.book_title
ORDER BY
    total_sold DESC
LIMIT 1
