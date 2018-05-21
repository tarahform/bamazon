DROP DATABASE IF EXISTS bamazonDB;
CREATE database bamazonDB;

USE bamazonDB;

CREATE TABLE products(
    item_id INT NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(255) NULL,
    department_name VARCHAR(255) NULL,
    price VARCHAR(255) NULL,
    stock_quantity VARCHAR(255) NULL,
    PRIMARY KEY (item_id)
);
-- 1
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Oh, the Places You'll Go!", "Children's Books", 11.00, 3);
-- 2
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("A Day in the Life of Marlon Bundo", "Children's Books", 15.00, 40);
-- 3
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("I'll Be Gone in the Dark", "True Crime Books", 21.17, 50);
--  4
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("You Are a Badass", "Self-help Books", 25.60, 1);
--  5
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("The Book Thief", "Historical Fiction Books", 13.90, 10);
-- 6
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("The Alchemist", "Fantasy Fiction Books", 8.20, 40);
-- 7
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Milk and Honey", "Poetry Books", 14.99, 18);
-- 8
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("The Handmaid's Tale", "Dystopian Fiction Books", 29.95, 20);
-- 9
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("In Cold Blood", "True Crime Books", 17.37, 20);
-- 10
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Great Expectations", "Autobiographical Fiction", 12.00, 25);