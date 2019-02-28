
    CREATE TABLE products (
	item_id INT(11) NOT NULL AUTO_INCREMENT,
    products_name VARCHAR NOT NULL,
    products_id INT(11) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    stock_quantity INT(11) NOT NULL,
    product_sales DECIMAL(10, 2),
    PRIMARY KEY (item_id)
    KEY department_id (department_id)
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