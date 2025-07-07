-- Creating the Customers table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);

-- Inserting data into Customers
INSERT INTO Customers VALUES
(101, 'Riya Sharma', 'Bengaluru'),
(102, 'Arjun Mehta', 'Hyderabad'),
(103, 'Neha Kulkarni', 'Kolkata'),
(104, 'Ayaan Sheikh', 'Ahmedabad');

-- Creating the Products table
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price DECIMAL(10,2)
);

-- Inserting data into Products
INSERT INTO Products VALUES
(201, 'Tablet', 18000.00),
(202, 'Smartwatch', 12000.00),
(203, 'Bluetooth Speaker', 3500.00),
(204, 'Keyboard', 1500.00);

-- Creating the Orders table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Inserting data into Orders
INSERT INTO Orders VALUES
(3001, 1, '2025-06-28'),
(3002, 2, '2025-07-01'),
(3003, 1, '2025-07-05');

-- Creating the OrderItems table
CREATE TABLE OrderItems (
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Inserting data into OrderItems
INSERT INTO OrderItems VALUES
(3001, 201, 1),  -- Riya bought 1 Tablet
(3001, 203, 1),  -- Riya bought 1 Bluetooth Speaker
(3002, 202, 2),  -- Arjun bought 2 Smartwatches
(3003, 204, 4);  -- Riya bought 4 Keyboards

-- INNER JOIN to fetch detailed order information
SELECT c.name AS CustomerName, o.order_id, o.order_date,
       p.product_name, oi.quantity, (p.price * oi.quantity) AS TotalAmount
FROM Customers c
INNER JOIN Orders o ON c.customer_id = o.customer_id
INNER JOIN OrderItems oi ON o.order_id = oi.order_id
INNER JOIN Products p ON oi.product_id = p.product_id;

-- LEFT JOIN to list all customers and their orders (if any)
SELECT c.name AS CustomerName, o.order_id, o.order_date
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id;

-- RIGHT JOIN to get all orders and linked customer info
SELECT o.order_id, o.order_date, c.name AS CustomerName
FROM Customers c
RIGHT JOIN Orders o ON c.customer_id = o.customer_id;

-- Simulated FULL OUTER JOIN using UNION
SELECT c.name AS CustomerName, o.order_id, o.order_date
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
UNION
SELECT c.name AS CustomerName, o.order_id, o.order_date
FROM Customers c
RIGHT JOIN Orders o ON c.customer_id = o.customer_id;

-- Customers whose total spend exceeds ₹30,000
SELECT c.name AS CustomerName, SUM(p.price * oi.quantity) AS TotalSpent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN OrderItems oi ON o.order_id = oi.order_id
JOIN Products p ON oi.product_id = p.product_id
GROUP BY c.customer_id, c.name
HAVING SUM(p.price * oi.quantity) > 30000;

-- Orders that exist but have no listed items
SELECT o.order_id, o.order_date, c.name AS CustomerName
FROM Orders o
LEFT JOIN OrderItems oi ON o.order_id = oi.order_id
JOIN Customers c ON o.customer_id = c.customer_id
WHERE oi.product_id IS NULL;
