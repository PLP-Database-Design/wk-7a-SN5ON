CREATE TABLE ProductDetail(
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerName VARCHAR(100),
    Products VARCHAR(100)
    FOREIGN KEY (OrderID) REFERENCES ProductDetail(OrderID)
);

INSERT INTO ProductDetail (OrderID, CustomerName, Products) 
VALUES
(101, 'John Doe', 'Laptop'),
(101, 'John Doe', 'Mouse'),
(102, 'Jane Smith', 'Tablet'),
(102, 'Jane Smith',  'Keyboard'),
(102, 'Jane Smith',  'Mouse'),
(103, 'Emily Clark', 'Phone');

--- QUESTION TWO
-- Create the Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);
-- Insert distinct order-customer pairs
INSERT INTO Orders (OrderID, CustomerName)
VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

CREATE TABLE product(
    product_id INT primary key,
    productName varchar(100),
    quantity INT,
    Order_id INT,
    foreign key(order_id) REFERENCES orders(Order_id)
);
INSERT INTO product(product_id, productName, quantity, OrderID)
VALUES
(1, 'laptop', 2, 101),
(2, 'Mouse', 1, 101),
(3, 'Tablet', 3, 102),
(4, 'Keyboard', 2, 102),
(5, 'Mouse', 1, 102),
(6, 'Phone', 1, 103);