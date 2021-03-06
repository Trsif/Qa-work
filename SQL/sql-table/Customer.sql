CREATE TABLE customer(
customer_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
first_name VARCHAR(50) NOT NULL,
middle_intial CHAR(1) NOT NULL,
last_name VARCHAR(60) NOT NULL,
age SMALLINT NOT NULL,
email VARCHAR(255));

CREATE TABLE products(
product_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
product_name VARCHAR(255) NOT NULL,
stock INT NOT NULL DEFAULT 0);

CREATE TABLE orders(
order_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
customer_id INT,
product_id INT,
amount INT NOT NULL,
FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
FOREIGN KEY(product_id) REFERENCES products(product_id));

