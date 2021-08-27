
1. SELECT customer_name, COUNT(Orders.id) as c FROM Customers 
LEFT JOIN Orders ON Orders.customer_id=Customers.customer_id
GROUP BY Customers.customer_id

2. SELECT customer_name FROM Customers 
LEFT JOIN Orders ON Orders.customer_id=Customers.customer_id
GROUP BY Customers.customer_id
HAVING COUNT(Orders.id)>2

3. SELECT customer_name, COUNT(Orders.id) as c FROM Customers 
LEFT JOIN Orders ON Orders.customer_id=Customers.customer_id
WHERE Orders.id NOT IN (SELECT order_id FROM Shipments)
GROUP BY Customers.customer_id

4. SELECT order_date, COUNT(order_id) as c FROM Orders
WHERE order_date>=SUBDATE(NOW(), INTERVAL 30 DAY)
GROUP BY order_date
