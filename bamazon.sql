CREATE DATABASE Bamazon;
USE Bamazon;

CREATE TABLE Products (
	ItemID INT(11) UNSIGNED AUTO_INCREMENT NOT NULL,
    ProductName VARCHAR(255) NOT NULL,
    DepartmentName VARCHAR(255) NOT NULL,
    Price DECIMAL(11,2) NOT NULL,
    StockQuantity INT UNSIGNED NOT NULL,
    PRIMARY KEY(ItemID)
);

INSERT INTO Products 
	(ProductName,DepartmentName,Price,StockQuantity)

VALUES
("Windex", "Cleaning Products", 5.00, 5000), 
("Clorox", "Cleaning Products", 6.5, 1000), 
("Digital Cooking Thermometer", "Cooking Tools", 35.00, 200), 
("Ray Ban Sunglasses", "Eye Wear", 89.00, 50), 
("Logitech Wireless Bluetooth Mouse", "Computer Accessories", 27.00, 1500), 
("AT&T 982 2-Line Speakerphone", "Office Products", 35.00, 150), 
("HP Envy 4520 Printer and XL Ink Bundle", "Printers", 115.98, 25), 
("Dixon No. 2 Yellow Pencils - 8 count", "School Supplies", 3.99, 2000), 
("Ooma Telo Free Home Phone Service", "Office Products", 80.00, 200), 
("Ooma Freedom DECT Headset", "Office Products", 79.00, 200);
    
CREATE TABLE Departments (
	DepartmentID INT(10) UNSIGNED AUTO_INCREMENT NOT NULL,
    DepartmentName VARCHAR(255) NOT NULL,
    OverheadCosts DECIMAL(10,2) DEFAULT 0.00 NOT NULL,
    ProductSales DECIMAL(10,2) DEFAULT 0.00,
    PRIMARY KEY(DepartmentID)
);

INSERT INTO Departments 
	(DepartmentName,OverHeadCosts)
VALUES
	('Cleaning Products',100),
    ('Cooking Tools',200),
    ('Eye Wear',900),
    ('Computer Accessories',1000),
    ('Office Products',500),
    ('Printers', 900),
    ('School Supplies',500);