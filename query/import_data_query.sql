CREATE DATABASE IF NOT EXISTS	sales_transaction_bank_muamalat;
USE sales_transaction_bank_muamalat;

CREATE TABLE IF NOT EXISTS Customers(
	CustomerID INT PRIMARY KEY AUTO_INCREMENT,
	FirstName VARCHAR(255),
	LastName VARCHAR(255),
	CustomerEmail VARCHAR(255),
	CustomerPhone VARCHAR(20),
	CustomerAddress TEXT,
	CustomerCity VARCHAR(255),
	CustomerState VARCHAR(255),
	CustomerZip INT(5)
);

CREATE TABLE IF NOT EXISTS ProductCategory(
	CategoryID INT PRIMARY KEY AUTO_INCREMENT,
	CategoryName VARCHAR(255),
	CategoryAbbreviation VARCHAR(255)
);

CREATE TABLE if NOT EXISTS Products(
ProdNumber VARCHAR(5) PRIMARY KEY,
ProdName VARCHAR(255),
Category INT,
FOREIGN KEY (Category) REFERENCES ProductCategory(CategoryID),
Price FLOAT
);

CREATE TABLE if NOT EXISTS Orders(
OrderID INT PRIMARY KEY AUTO_INCREMENT,
Date DATE,
Customer INT,
FOREIGN KEY (Customer) REFERENCES Customers(CustomerID),
ProdNumber VARCHAR(5),
FOREIGN KEY (ProdNumber) REFERENCES Products(ProdNumber),
Quantity INT
);

LOAD DATA INFILE 'D:/Raka/JAP/VIX/Bank Muamalat Business Intelligence Analyst Virtual Internship Program/Finpro/productcategory.csv' 
INTO TABLE productcategory FIELDS TERMINATED BY ';' 
ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;

LOAD DATA INFILE 'D:/Raka/JAP/VIX/Bank Muamalat Business Intelligence Analyst Virtual Internship Program/Finpro/customers.csv' 
INTO TABLE customers FIELDS TERMINATED BY ';' 
ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;

LOAD DATA INFILE 'D:/Raka/JAP/VIX/Bank Muamalat Business Intelligence Analyst Virtual Internship Program/Finpro/products.csv' 
INTO TABLE products FIELDS TERMINATED BY ';' 
ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;

LOAD DATA INFILE 'D:/Raka/JAP/VIX/Bank Muamalat Business Intelligence Analyst Virtual Internship Program/Finpro/orders.csv' 
INTO TABLE orders FIELDS TERMINATED BY ';' 
ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;