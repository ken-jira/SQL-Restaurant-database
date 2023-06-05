-- Customer table
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    phone_number VARCHAR(20),
    address VARCHAR(255)
);

-- Order table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

-- Menu table
CREATE TABLE Menu (
    item_id INT PRIMARY KEY,
    name VARCHAR(255),
    description VARCHAR(255),
    price DECIMAL(8, 2)
);

-- OrderItem table
CREATE TABLE OrderItem (
    order_id INT,
    item_id INT,
    quantity INT,
    PRIMARY KEY (order_id, item_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (item_id) REFERENCES Menu(item_id)
);

-- Invoice table
CREATE TABLE Invoice (
    invoice_id INT PRIMARY KEY,
    order_id INT,
    total_amount DECIMAL(10, 2),
    payment_date DATE,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);
