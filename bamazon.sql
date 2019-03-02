CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (
	item_id INT NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(45) NULL,
    department VARCHAR(45) NULL,
    price DECIMAL(10,2) NULL,
    stock_quantity INT NULL,
    PRIMARY KEY (`item_id`)
);

INSERT INTO products (product_name, department, price, stock_quantity) VALUES ('Cutting Board', 'Kitchen', 1399, 23);
INSERT INTO products (product_name, department, price, stock_quantity) VALUES ('Sticky Notes', 'Office Products', 9.00, 84);
INSERT INTO products (product_name, department, price, stock_quantity) VALUES ('Nintendo 3DS', 'Electronics', 210.99, 105);
INSERT INTO products (product_name, department, price, stock_quantity) VALUES ('Apple Watch', 'Electronics', 668.95, 32);
INSERT INTO products (product_name, department, price, stock_quantity) VALUES ('Pokemon Cards', 'Toys and Games', 4.49, 243);
INSERT INTO products (product_name, department, price, stock_quantity) VALUES ('Sapphire Necklace', 'Jewerly', 596.99, 50);
INSERT INTO products (product_name, department, price, stock_quantity) VALUES ('The Moon & Antarctica', 'CD and Vinyl', 24.92, 45);
INSERT INTO products (product_name, department, price, stock_quantity) VALUES ('Volley Ball Net', 'Sports & Outdoors', 39.99, 50);
INSERT INTO products (product_name, department, price, stock_quantity) VALUES ('Monopoly', 'Toys and Games', 18.44, 450);
INSERT INTO products (product_name, department, price, stock_quantity) VALUES ('Rustic Gray Dining Set', 'Home and Kitchen', 824.99, 60);

SELECT * FROM bamazon.products;