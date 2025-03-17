CREATE DATABASE e_commerce_assignment;

 CREATE TABLE users (
    created_number SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE
 );
 
  CREATE TABLE products (
	created_number INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),
    quantity INT UNIQUE
) AUTO_INCREMENT = 1;

CREATE TABLE orders (
	order_number SERIAL PRIMARY KEY,
    ordering_time time,
    quantity INT UNIQUE,
    FOREIGN KEY (quantity) REFERENCES products(quantity)
);