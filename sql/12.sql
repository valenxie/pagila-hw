/*
 * Use a JOIN to list the total paid by each customer.
 * List the customers alphabetically by last name.
 * Use tables payment and customer.
 */
SELECT c.customer_id,first_name, last_name,SUM(amount)
FROM payment
INNER JOIN customer c
USING (customer_id)
GROUP BY c.customer_id,first_name,last_name
ORDER BY last_name;
