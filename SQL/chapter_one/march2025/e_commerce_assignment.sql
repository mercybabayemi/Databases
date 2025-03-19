CREATE DATABASE e_commerce_assignment;

 CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    user_name VARCHAR(100),
    email VARCHAR(100) UNIQUE
 );
 
  CREATE TABLE products (
	id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL,
    amount_in_stock INT 
) AUTO_INCREMENT = 2;

CREATE TABLE orders (
	id SERIAL PRIMARY KEY,
    ordering_time time,
    order_quantity INT,
    user_id VARCHAR(100) UNIQUE,
    FOREIGN KEY (user_id) REFERENCES users(id),
    product_quantity_in_stock INT,
    FOREIGN KEY (product_quantity_in_stock) REFERENCES products(quantity_in_stock)
);