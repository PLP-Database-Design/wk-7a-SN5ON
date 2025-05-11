CREATE TABLE ProductDetail(
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerName VARCHAR(100),
    Products VARCHAR(255)
    FOREIGN KEY (OrderID) REFERENCES ProductDetail(OrderID)
);

INSERT INTO ProductDetail (OrderID, CustomerName, Products) 
VALUES
(101, 'John Doe', 'Laptop, Mouse'),
(102, 'Jane Smith', 'Tablet, Keyboard, Mouse'),
(103, 'Emily Clark', 'Phone');

--- QUESTION TWO
-- Create the Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

-- Insert distinct order-customer pairs
INSERT INTO Orders (OrderID, CustomerName)
SELECT OrderID, CustomerName
FROM OrderDetails;

-- Create the OrderItems table
CREATE TABLE OrderItems (
    OrderID INT,
    Product VARCHAR(100),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- Insert order items (excluding customer name)
INSERT INTO OrderItems (OrderID, Product, Quantity)
SELECT OrderID, Product, Quantity
FROM OrderDetails;
