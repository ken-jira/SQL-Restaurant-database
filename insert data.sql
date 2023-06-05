-- Insert data into Customer table
INSERT INTO Customer (customer_id, name, email, phone_number, address)
VALUES
    (1, 'John Doe', 'john.doe@example.com', '1234567890', '123 Main St'),
    (2, 'Jane Smith', 'jane.smith@example.com', '0987654321', '456 Elm St'),
    (3, 'David Johnson', 'david.johnson@example.com', '9876543210', '789 Oak Ave'),
    (4, 'Sarah Williams', 'sarah.williams@example.com', '0123456789', '321 Maple Rd'),
    (5, 'Michael Brown', 'michael.brown@example.com', '5678901234', '654 Pine Lane');

-- Insert data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date)
VALUES
    (1, 1, '2023-05-01'),
    (2, 2, '2023-05-02'),
    (3, 3, '2023-05-03'),
    (4, 4, '2023-05-04'),
    (5, 5, '2023-05-05');

-- Insert data into Menu table
INSERT INTO Menu (item_id, name, description, price)
VALUES
    (1, 'Cheeseburger', 'Classic beef patty with cheese', 9.99),
    (2, 'Margherita Pizza', 'Traditional pizza with tomatoes and mozzarella', 12.99),
    (3, 'Chicken Alfredo', 'Creamy pasta with grilled chicken', 14.99),
    (4, 'Caesar Salad', 'Fresh lettuce, croutons, and Caesar dressing', 8.99),
    (5, 'Chocolate Brownie', 'Decadent chocolate dessert', 6.99);

-- Insert data into OrderItem table
INSERT INTO OrderItem (order_id, item_id, quantity)
VALUES
    (1, 1, 2),
    (1, 3, 1),
    (2, 2, 1),
    (3, 1, 3),
    (4, 4, 2);

-- Insert data into Invoice table
INSERT INTO Invoice (invoice_id, order_id, total_amount, payment_date)
VALUES
    (1, 1, 34.97, '2023-05-01'),
    (2, 2, 12.99, '2023-05-02'),
    (3, 3, 14.99, '2023-05-03'),
    (4, 4, 17.98, '2023-05-04'),
    (5, 5, 13.98, '2023-05-05');
