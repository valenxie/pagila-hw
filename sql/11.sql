/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title alphabetically.
 */
SELECT i.film_id, f.title,COUNT(i.film_id)
FROM film f
INNER JOIN inventory i
ON f.film_id = i.film_id
WHERE f.title LIKE 'H%'
GROUP BY i.film_id, f.title
ORDER BY f.title DESC;

