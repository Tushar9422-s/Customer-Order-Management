create database customer;
use customer;
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,  -- Unique identifier for each customer
    name VARCHAR(100) NOT NULL,                  -- Name of the customer
    email VARCHAR(100) NOT NULL UNIQUE,          -- Email address of the customer (unique)
    phone_number VARCHAR(15),                    -- Customer's contact number
    address VARCHAR(255)                         -- Shipping address of the customer
);

INSERT INTO Customers (name, email, phone_number, address) VALUES
('Alice Green', 'alice.green@example.com', '123-456-7890', '123 Maple St, New York, NY'),
('Bob Brown', 'bob.brown@example.com', '987-654-3210', '456 Oak Rd, Los Angeles, CA'),
('Charlie White', 'charlie.white@example.com', '234-567-8901', '789 Pine Ave, Chicago, IL'),
('David Black', 'david.black@example.com', '345-678-9012', '101 Elm St, Miami, FL'),
('Eva Blue', 'eva.blue@example.com', '456-789-0123', '202 Birch Blvd, Seattle, WA'),
('Frank Yellow', 'frank.yellow@example.com', '567-890-1234', '303 Cedar Dr, Dallas, TX'),
('Grace Red', 'grace.red@example.com', '678-901-2345', '404 Ash Ln, Boston, MA'),
('Hannah Purple', 'hannah.purple@example.com', '789-012-3456', '505 Willow Cir, Denver, CO'),
('Ian Pink', 'ian.pink@example.com', '890-123-4567', '606 Redwood Way, San Francisco, CA'),
('Jack Gold', 'jack.gold@example.com', '901-234-5678', '707 Cherry St, Atlanta, GA'),
('Karen Silver', 'karen.silver@example.com', '012-345-6789', '808 Maple Dr, Austin, TX'),
('Leo Brown', 'leo.brown@example.com', '123-456-7891', '909 Oak Rd, Orlando, FL'),
('Mona White', 'mona.white@example.com', '234-567-8902', '123 Pine Ln, Portland, OR'),
('Nina Green', 'nina.green@example.com', '345-678-9013', '234 Birch Blvd, Phoenix, AZ'),
('Oscar Blue', 'oscar.blue@example.com', '456-789-0124', '345 Cedar St, Las Vegas, NV'),
('Paul Red', 'paul.red@example.com', '567-890-1235', '456 Ash Ln, San Diego, CA'),
('Quinn Yellow', 'quinn.yellow@example.com', '678-901-2346', '567 Willow Way, Tampa, FL'),
('Rachel Purple', 'rachel.purple@example.com', '789-012-3457', '678 Redwood St, Salt Lake City, UT'),
('Sam Pink', 'sam.pink@example.com', '890-123-4568', '789 Cherry Ln, Kansas City, MO'),
('Tina Gold', 'tina.gold@example.com', '901-234-5679', '890 Maple Dr, Raleigh, NC'),
('Ursula Silver', 'ursula.silver@example.com', '012-345-6790', '901 Oak Way, Nashville, TN'),
('Vera Brown', 'vera.brown@example.com', '123-456-7892', '123 Pine Blvd, Charlotte, NC'),
('Will White', 'will.white@example.com', '234-567-8903', '234 Birch Cir, Detroit, MI'),
('Xander Green', 'xander.green@example.com', '345-678-9014', '345 Cedar Blvd, Cleveland, OH'),
('Yara Blue', 'yara.blue@example.com', '456-789-0125', '456 Ash Dr, St. Louis, MO'),
('Zane Red', 'zane.red@example.com', '567-890-1236', '567 Willow Blvd, Minneapolis, MN'),
('Ava Yellow', 'ava.yellow@example.com', '678-901-2347', '678 Redwood Ave, Columbus, OH'),
('Ben Pink', 'ben.pink@example.com', '789-012-3458', '789 Cherry Blvd, Pittsburgh, PA'),
('Cleo Gold', 'cleo.gold@example.com', '890-123-4569', '890 Maple Ln, Baltimore, MD'),
('Dan Silver', 'dan.silver@example.com', '901-234-5680', '901 Oak Blvd, Sacramento, CA'),
('Eliza Brown', 'eliza.brown@example.com', '012-345-6791', '123 Pine Dr, Phoenix, AZ'),
('Finn White', 'finn.white@example.com', '123-456-7893', '234 Birch Way, San Antonio, TX'),
('Gina Green', 'gina.green@example.com', '234-567-8904', '345 Cedar Ln, Miami, FL'),
('Holly Blue', 'holly.blue@example.com', '345-678-9015', '456 Ash Blvd, Nashville, TN'),
('Ivy Red', 'ivy.red@example.com', '456-789-0126', '567 Willow Way, Louisville, KY'),
('James Yellow', 'james.yellow@example.com', '567-890-1237', '678 Redwood Blvd, Chicago, IL'),
('Kathy Purple', 'kathy.purple@example.com', '678-901-2348', '789 Cherry Dr, Portland, OR'),
('Liam Pink', 'liam.pink@example.com', '789-012-3459', '890 Maple Cir, Seattle, WA'),
('Maggie Gold', 'maggie.gold@example.com', '890-123-4570', '901 Oak St, Atlanta, GA'),
('Nate Silver', 'nate.silver@example.com', '901-234-5681', '123 Pine Ln, Orlando, FL'),
('Olivia Brown', 'olivia.brown@example.com', '012-345-6792', '234 Birch Blvd, Austin, TX'),
('Pete White', 'pete.white@example.com', '123-456-7894', '345 Cedar Dr, Dallas, TX'),
('Quincy Green', 'quincy.green@example.com', '234-567-8905', '456 Ash Cir, Boston, MA'),
('Rose Blue', 'rose.blue@example.com', '345-678-9016', '567 Willow Ln, Los Angeles, CA'),
('Steve Red', 'steve.red@example.com', '456-789-0127', '678 Redwood St, New York, NY'),
('Terry Yellow', 'terry.yellow@example.com', '567-890-1238', '789 Cherry Blvd, San Francisco, CA');


select* from Customers ;

CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,        -- Unique identifier for each order
    customer_id INT,                                -- References the customer who placed the order
    order_date DATE NOT NULL,                       -- Date when the order was placed
    order_total DECIMAL(10, 2) NOT NULL,            -- Total cost of the order
    status VARCHAR(50) NOT NULL,                    -- Order status (e.g., 'Pending', 'Shipped', 'Delivered')
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)  -- Foreign key referencing the Customers table
);
select * from orders;
INSERT INTO Orders (customer_id, order_date, order_total, status) VALUES(1, '2025-01-01', 120.00, 'Shipped'),
(2, '2025-01-02', 75.50, 'Delivered'),
(3, '2025-01-03', 150.25, 'Shipped'),
(4, '2025-01-04', 200.00, 'Pending'),
(5, '2025-01-05', 90.75, 'Shipped'),
(6, '2025-01-06', 45.30, 'Delivered'),
(7, '2025-01-07', 65.00, 'Shipped'),
(8, '2025-01-08', 110.50, 'Pending'),
(9, '2025-01-09', 80.99, 'Delivered'),
(10, '2025-01-10', 250.10, 'Shipped'),
(11, '2025-01-11', 135.60, 'Pending'),
(12, '2025-01-12', 210.80, 'Delivered'),
(13, '2025-01-13', 180.00, 'Shipped'),
(14, '2025-01-14', 50.90, 'Delivered'),
(15, '2025-01-15', 75.45, 'Pending'),
(16, '2025-01-16', 150.00, 'Shipped'),
(17, '2025-01-17', 95.00, 'Shipped'),
(18, '2025-01-18', 120.40, 'Delivered'),
(19, '2025-01-19', 80.99, 'Pending'),
(20, '2025-01-20', 95.55, 'Shipped'),
(21, '2025-01-21', 65.00, 'Delivered'),
(22, '2025-01-22', 210.00, 'Shipped'),
(23, '2025-01-23', 130.00, 'Pending'),
(24, '2025-01-24', 250.50, 'Shipped'),
(25, '2025-01-25', 170.00, 'Delivered'),
(26, '2025-01-26', 60.00, 'Pending'),
(27, '2025-01-27', 110.25, 'Shipped'),
(28, '2025-01-28', 80.40, 'Delivered'),
(29, '2025-01-29', 95.60, 'Shipped'),
(30, '2025-01-30', 125.30, 'Pending'),
(31, '2025-02-01', 50.00, 'Shipped'),
(32, '2025-02-02', 130.10, 'Delivered'),
(33, '2025-02-03', 160.20, 'Shipped'),
(34, '2025-02-04', 90.00, 'Shipped'),
(35, '2025-02-05', 70.80, 'Pending'),
(36, '2025-02-06', 115.25, 'Shipped'),
(37, '2025-02-07', 85.30, 'Delivered'),
(38, '2025-02-08', 125.75, 'Shipped'),
(39, '2025-02-09', 135.00, 'Pending'),
(40, '2025-02-10', 95.80, 'Shipped'),
(41, '2025-02-11', 110.50, 'Delivered'),
(42, '2025-02-12', 190.00, 'Shipped'),
(43, '2025-02-13', 150.45, 'Pending'),
(44, '2025-02-14', 180.10, 'Delivered');

-- 1. Query: Get all customers and their orders

SELECT c.customer_id, c.name, o.order_id, o.order_date, o.order_total, o.status
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id;
-- 2. Query: Find the total number of orders placed by each customer
SELECT c.name, COUNT(o.order_id) AS total_orders
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.name;
-- 3. Query: Find the customer who placed the highest total order

SELECT c.name, SUM(o.order_total) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY total_spent DESC
LIMIT 1;
-- 4. Query: Get the details of orders with status 'Shipped'
SELECT o.order_id, c.name, o.order_date, o.order_total, o.status
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
WHERE o.status = 'Shipped';
-- 5. Query: Find all customers who have not placed any orders

SELECT c.name
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;
-- 6. Query: Get the total revenue generated from all orders

SELECT SUM(order_total) AS total_revenue
FROM Orders;
-- 7. Query: Get all orders placed in January 2025

SELECT o.order_id, c.name, o.order_date, o.order_total, o.status
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
WHERE o.order_date BETWEEN '2025-01-01' AND '2025-01-31';
-- 8. Query: Update the status of an order
UPDATE Orders
SET status = 'Shipped'
WHERE order_id = 5;
-- 9. Query: Get the number of orders in each status category

SELECT status, COUNT(*) AS total_orders
FROM Orders
GROUP BY status;
-- 10. Query: Find the orders placed by a specific customer (e.g., customer with ID 2)
SELECT o.order_id, o.order_date, o.order_total, o.status
FROM Orders o
WHERE o.customer_id = 2;
-- 11. Query: Get the most recent order for each customer

SELECT c.name, o.order_id, o.order_date, o.order_total, o.status
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
WHERE o.order_date IN (SELECT MAX(order_date)
                        FROM Orders
                        WHERE customer_id = c.customer_id)
ORDER BY o.order_date DESC;
-- 12. Query: Get the total spending per customer for the orders placed

SELECT c.name, SUM(o.order_total) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.name;


-- 13. Get customers with the total number of orders greater than 5

SELECT c.name, COUNT(o.order_id) AS total_orders
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id
HAVING COUNT(o.order_id) > 5;
-- 14. Find customers who have spent more than $500
SELECT c.name, SUM(o.order_total) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id
HAVING SUM(o.order_total) > 500;
-- 15. Get customers who have placed at least one order

SELECT c.name, COUNT(o.order_id) AS total_orders
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id
HAVING COUNT(o.order_id) > 0;
-- 16. Find the total order amount for each customer and order by total spent

SELECT c.name, SUM(o.order_total) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id
ORDER BY total_spent DESC;
-- 17. Find the highest spending customers who have placed more than 3 orders

SELECT c.name, SUM(o.order_total) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id
HAVING COUNT(o.order_id) > 3
ORDER BY total_spent DESC;
-- 18. Get the number of orders placed in each month

SELECT MONTH(order_date) AS month, COUNT(order_id) AS total_orders
FROM Orders
GROUP BY MONTH(order_date)
ORDER BY month;
-- 19. Find the number of orders per customer and order by order count

SELECT c.name, COUNT(o.order_id) AS total_orders
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id
ORDER BY total_orders DESC;
-- 20. Get the average order total per customer

SELECT c.name, AVG(o.order_total) AS average_order_value
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id
ORDER BY average_order_value DESC;
-- 21. Get the order count and total spending for each order status

SELECT o.status, COUNT(o.order_id) AS total_orders, SUM(o.order_total) AS total_spent
FROM Orders o
GROUP BY o.status
ORDER BY o.status;
-- 22. Find customers who spent more than $200 but placed fewer than 3 orders

SELECT c.name, SUM(o.order_total) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id
HAVING SUM(o.order_total) > 200 AND COUNT(o.order_id) < 3
ORDER BY total_spent DESC;
-- 23. Get the total number of orders and total spending for each customer who has spent more than $300

SELECT c.name, COUNT(o.order_id) AS total_orders, SUM(o.order_total) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id
HAVING SUM(o.order_total) > 300
ORDER BY total_spent DESC;
-- 24 Get the number of orders for each order status, but only for statuses with more than 10 orders

SELECT o.status, COUNT(o.order_id) AS total_orders
FROM Orders o
GROUP BY o.status
HAVING COUNT(o.order_id) > 10
ORDER BY total_orders DESC;


-- 25. Get the customer with the highest number of orders and the total spent

SELECT c.name, COUNT(o.order_id) AS total_orders, SUM(o.order_total) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id
ORDER BY total_orders DESC
LIMIT 1;
-- 26 Get the average order total for each customer over the last year

SELECT c.name, AVG(o.order_total) AS average_order_value
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
WHERE o.order_date >= CURDATE() - INTERVAL 1 YEAR
GROUP BY c.customer_id;
-- 27 Find the customer with the highest total spending in a specific month (e.g., January 2025)

SELECT c.name, SUM(o.order_total) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
WHERE o.order_date BETWEEN '2025-01-01' AND '2025-01-31'
GROUP BY c.customer_id
ORDER BY total_spent DESC
LIMIT 1;
-- 28. Get the top 5 customers by total spending in the last 6 months

SELECT c.name, SUM(o.order_total) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
WHERE o.order_date >= CURDATE() - INTERVAL 6 MONTH
GROUP BY c.customer_id
ORDER BY total_spent DESC
LIMIT 5;
-- 29. Get the number of orders and total spending for each order status (using GROUP BY and HAVING)

SELECT o.status, COUNT(o.order_id) AS total_orders, SUM(o.order_total) AS total_spent
FROM Orders o
GROUP BY o.status
HAVING COUNT(o.order_id) > 5
ORDER BY total_spent DESC;
-- 30. Get the cumulative spending for each customer (using window functions)

SELECT c.name, o.order_id, o.order_total,
       SUM(o.order_total) OVER (PARTITION BY c.customer_id ORDER BY o.order_date) AS cumulative_spending
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
ORDER BY c.customer_id, o.order_date;

