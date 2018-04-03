--Get all customers and their addresses.
SELECT * FROM customers JOIN addresses ON customers.id = addresses.customer_id;
--Get all orders and their line items.
SELECT * FROM orders JOIN line_items ON orders.id = line_items.order_id;
--Which warehouses have cheetos?
SELECT warehouse.warehouse FROM warehouse JOIN warehouse_product ON warehouse.id = warehouse_product.warehouse_id JOIN products ON warehouse_product.product_id = products.id WHERE products.description = 'cheetos';
--Which warehouses have diet pepsi?
SELECT warehouse.warehouse FROM warehouse JOIN warehouse_product ON warehouse.id = warehouse_product.warehouse_id JOIN products ON warehouse_product.product_id = products.id WHERE products.description = 'diet pepsi';
--Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
SELECT first_name, last_name, count(customer_id) FROM orders JOIN addresses ON orders.address_id = addresses.id JOIN customers ON addresses.customer_id = customers.id GROUP BY customers.first_name, customers.last_name;
--How many customers do we have?
SELECT count(DISTINCT id) FROM customers;
--How many products do we carry?
SELECT count(DISTINCT id) FROM products;
--What is the total available on-hand quantity of diet pepsi?
