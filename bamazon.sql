DROP DATABASE IF EXISTS bamazon_db;
CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products (
	item_id INT NOT NULL AUTO_INCREMENT,
    product_name TEXT NOT NULL,
    department_name TEXT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    stock_quantity INT NOT NULL,
    product_sales DECIMAL(10, 2),
    PRIMARY KEY (item_id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES
('Cutting Board', 'Kitchen', 13.99, 23),
('Sticky Notes', 'Office Products', 9.00, 84),
('Nintendo 3DS', 'Electronics', 210.99, 105),
('Apple Watch', 'Electronics', 668.95, 32),
('Pokemon Cards', 'Toys and Games', 4.49, 243),
('Sapphire Necklace', 'Jewerly', 596.99, 38),
('The Moon & Antarctica', 'CD and Vinyl', 24.92, 45),
('Volley Ball Net', 'Sports & Outdoors', 39.99, 50),
('Monopoly', 'Toys and Games', 18.44, 450),
('Rustic Gray Dining Set', 'Home and Kitchen', 824.99, 60);

SELECT * FROM bamazon_db.products;
