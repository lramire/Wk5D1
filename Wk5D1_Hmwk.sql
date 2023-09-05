-- Week 5 Day 1 Homework
-- Question 1
SELECT last_name
FROM actor
WHERE last_name LIKE 'Wahlberg';

--Question 2
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

--Question 3
-- SELECT film_id, SUM(inventory_id)
-- FROM inventory
-- GROUP BY film_id
-- ORDER BY SUM(inventory_id) DESC;
SELECT COUNT(DISTINCT film_id), inventory_id
FROM inventory
GROUP BY film_id, inventory_id
ORDER BY inventory_id;

--Question 4
SELECT last_name
FROM customer
WHERE last_name LIKE 'William';

--Question 5
SELECT staff_id AS staff_id, COUNT(inventory_id) AS rentals_sold
FROM rental
GROUP BY staff_id
ORDER BY SUM(inventory_id) DESC
LIMIT 1;

--Question 6
SELECT DISTINCT district
FROM address;

--Question 7
SELECT film_id, COUNT(actor_id) AS number_of_actors
FROM film_actor
GROUP BY film_id
ORDER BY  number_of_actors DESC
LIMIT 1;

--Question 8
SELECT customer_id, store_id, first_name, last_name
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es';

--Question 9
SELECT COUNT(DISTINCT amount)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
-- HAVING   >250;

--Question 10
SELECT rating, COUNT(*) AS number_of_movies
FROM film
GROUP BY rating
ORDER BY COUNT(rating) DESC;