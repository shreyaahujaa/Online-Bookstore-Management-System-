use onlinebookstore;

CREATE TABLE Authors (
    AuthorID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL
);

CREATE TABLE Categories (
    CategoryID INT AUTO_INCREMENT PRIMARY KEY,
    CategoryName VARCHAR(100) NOT NULL
);

CREATE TABLE Books (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    CategoryID INT,
    AuthorID INT,
    Price DECIMAL(10, 2) NOT NULL,
    Stock INT NOT NULL,
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID),
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Address TEXT,
    PhoneNumber VARCHAR(15)
);

CREATE TABLE Orders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE NOT NULL,
    Status VARCHAR(50) NOT NULL,
    TotalAmount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE OrderDetails (
    OrderDetailID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT,
    BookID INT,
    Quantity INT NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

-- Inserting data into tables

-- Insert authors
INSERT INTO Authors (Name)
VALUES 
	('J.K. Rowling'),
	('George Orwell'),
	('J.R.R. Tolkien'),
	('Agatha Christie'),
	('Dan Brown');
    
-- Insert categories
INSERT INTO Categories (CategoryName)
VALUES 
	('Fiction'),
	('Mystery'),
	('Fantasy'),
	('Science Fiction'),
	('Thriller');
    
-- Insert books
INSERT INTO Books (Title, CategoryID, AuthorID, Price, Stock)
VALUES 
	('Harry Potter and the Sorcerer\'s Stone', 3, 1, 15.99, 50),
	('Stories 1984', 4, 2, 12.50, 30),
	('The Hobbit', 3, 3, 14.99, 40),
	('Murder on the Orient Express', 2, 4, 10.99, 25),
	('The Da Vinci Code', 5, 5, 16.99, 35);
    
-- Insert customers
INSERT INTO Customers (Name, Email, Address, PhoneNumber)
VALUES 
	('Dhruv Saxena', 'dhruv@outlook.com', '123 Civil Lines, BE', '7983255862'),
	('Shreya Ahuja', 'shreya@gmail.com', '2KP, Noida', '9876543210'),
	('Travis Scott', 'travis@yahoo.com', 'Janakpuri, DL', '5556667777');
    
-- Insert orders
INSERT INTO Orders (CustomerID, OrderDate, Status, TotalAmount)
VALUES 
	(1, '2025-03-01', 'Shipped', 31.98),
	(2, '2025-03-02', 'Processing', 12.50),
	(3, '2025-03-03', 'Delivered', 27.98);
    
-- Insert order details
INSERT INTO OrderDetails (OrderID, BookID, Quantity, Price)
VALUES 
	(1, 1, 1, 15.99),
	(1, 4, 1, 10.99),
	(2, 2, 1, 12.50),
	(3, 3, 1, 14.99),
	(3, 5, 1, 16.99);
    
    
-- List all orders with customer details
SELECT Orders.OrderID, Customers.Name, Orders.OrderDate, Orders.Status, Orders.TotalAmount
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

-- Find customers who have placed an order
SELECT DISTINCT Customers.Name, Customers.Email
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- Fantasy books 
SELECT Books.Title
FROM Books
JOIN Categories ON Books.CategoryID = Categories.CategoryID
WHERE Categories.CategoryName = 'Fantasy';
