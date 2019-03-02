CREATE DATABASE Bamazon;

USE Bamazon;

CREATE TABLE products (
	itemID INT NOT NULL AUTO_INCREMENT,
    productName VARCHAR(45) NULL,
    departmentName VARCHAR(45) NULL,
    price DECIMAL(10,2) NULL,
    stockQuantity INT NULL,
    PRIMARY KEY (`itemID`)
);

INSERT INTO products (productName, departmentName, price, stockQuantity) VALUES ('Cutting Board', 'Kitchen', 13.99, 23);
INSERT INTO products (productName, departmentName, price, stockQuantity) VALUES ('Sticky Notes', 'Office Products', 9.00, 84);
INSERT INTO products (productName, departmentName, price, stockQuantity) VALUES ('Nintendo 3DS', 'Electronics', 210.99, 105);
INSERT INTO products (productName, departmentName, price, stockQuantity) VALUES ('Apple Watch', 'Electronics', 668.95, 32);
INSERT INTO products (productName, departmentName, price, stockQuantity) VALUES ('Pokemon Cards', 'Toys and Games', 4.49, 243);
INSERT INTO products (productName, departmentName, price, stockQuantity) VALUES ('Sapphire Necklace', 'Jewerly', 596.99, 38, 2, 50);
INSERT INTO products (productName, departmentName, price, stockQuantity) VALUES ('The Moon & Antarctica', 'CD and Vinyl', 24.92, 45);
INSERT INTO products (productName, departmentName, price, stockQuantity) VALUES ('Volley Ball Net', 'Sports & Outdoors', 39.99, 50);
INSERT INTO products (productName, departmentName, price, stockQuantity) VALUES ('Monopoly', 'Toys and Games', 18.44, 450);
INSERT INTO products (productName, departmentName, price, stockQuantity) VALUES ('Rustic Gray Dining Set', 'Home and Kitchen', 824.99, 60);

SELECT * FROM bamazon.products;