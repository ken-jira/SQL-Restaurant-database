-- Find customers who have placed orders
SELECT name
FROM Customer
WHERE customer_id IN (
    SELECT customer_id
    FROM Orders
);

-- Calculate the total amount spent by each customer
SELECT c.name, SUM(i.total_amount) AS total_spent
FROM Customer c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN Invoice i ON o.order_id = i.order_id
GROUP BY c.name;

-- Get the menu items and the corresponding order quantities for a specific order
SELECT m.name, oi.quantity
FROM Menu m
JOIN OrderItem oi ON m.item_id = oi.item_id
WHERE oi.order_id = 1;

-- Find invoices that were paid after a certain date
SELECT *
FROM Invoice
WHERE payment_date > '2023-05-02';
