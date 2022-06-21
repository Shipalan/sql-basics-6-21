CREATE TABLE orders (
  order_id serial primary key,
  person_id INTEGER,
  product_name VARCHAR(30),
  product_price FLOAT,
  quantity INTEGER);

--Add 5 orders to the orders table-----------------------

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (82, 'Chicken', 23.99, 1),
(64, 'Steak', 65, 3), 
(82, 'Fries', 2.99, 1),
(82, 'Drink', 3, 1),
(64, 'Drink', 3, 3);

--Select all the records from the orders table.------------------------

SELECT * FROM orders;

--Calculate the total number of products ordered.------------------------

SELECT SUM(quantity) FROM orders;

--Calculate the total order price.--------------------------------------

SELECT SUM(product_price) FROM orders;

--Calculate the total order price by a single person_id.------------------

SELECT SUM(product_price) FROM orders WHERE person_id = 64;
