--Get all customers and their addresses.
SELECT * FROM customers JOIN addresses ON customers.id = addresses.customer_id;
--Get all orders and their line items.
SELECT * FROM orders JOIN line_items ON orders.id = line_items.order_id;
--Which warehouses have cheetos?
SELECT * FROM warehouse JOIN warehouse_product ON warehouse.id = warehouse_product.warehouse_id 
JOIN products ON warehouse_product.product_id = products.id WHERE products.description = 'cheetos';
--Which warehouses have diet pepsi?
SELECT * FROM warehouse JOIN warehouse_product ON warehouse.id = warehouse_product.warehouse_id 
JOIN products ON warehouse_product.product_id = products.id WHERE products.description = 'diet pepsi';
--Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.

--How many customers do we have?

--How many products do we carry?

--What is the total available on-hand quantity of diet pepsi?
