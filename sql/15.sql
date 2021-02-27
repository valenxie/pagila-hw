/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */
SELECT c.name, COUNT(title) as sum
FROM category c
INNER JOIN film_category USING (category_id)
INNER JOIN film USING (film_id)
INNER JOIN language USING (language_id)
WHERE language.name='English'
GROUP BY c.name;
