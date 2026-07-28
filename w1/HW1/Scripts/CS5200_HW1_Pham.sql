-- ============================================================
-- CS 5200  Database Management Systems  Summer 2026
-- Homework 1, Part B
-- Instructor: Dan Graziano
--
-- Student name:  Cherry Pham
-- Date:          05/19/2026
--
-- AI disclosure (delete the line that doesn't apply):
--   I did not use any AI tools on this assignment.
-- ============================================================


-- Q1: List the title and rating of all films rated 'G'.

SELECT title, rating
FROM film
WHERE rating::text ILIKE 'G';



-- Q2: List the title and replacement_cost of all films with a
--     replacement_cost greater than $25.00.

SELECT title, replacement_cost
FROM film
WHERE replacement_cost > 25.00;



-- Q3: List the title and length of all films longer than 180
--     minutes, sorted by length from longest to shortest.

SELECT title, length
FROM film
WHERE length > 180
ORDER BY length DESC;



-- Q4: List all distinct values found in the rating column of
--     the film table.

SELECT DISTINCT rating
FROM film;




-- Q5: List the first_name and last_name of all actors whose
--     last name is "DAVIS".
--     (Reminder: Pagila stores names in uppercase.)

SELECT first_name, last_name
FROM actor
WHERE last_name = 'DAVIS';



-- Q6: List the title and length of the 10 shortest films.

SELECT title, length
FROM film
ORDER BY length ASC
LIMIT 10;




-- Q7: From the actor table, list the first_name and last_name
--		  of the first 20 actors in the table, sorted by actor_id.

SELECT first_name, last_name
FROM actor
ORDER BY actor_id ASC
LIMIT 20;




-- Q8: List the title, rental_rate, and length of all films
--     that are rated 'PG-13', longer than 90 minutes, AND
--     have a rental_duration of less than 5 days.

SELECT title, rental_rate, length
FROM film
WHERE rating::text = 'PG-13'
AND length > 90
AND rental_duration < 5;




-- Q9: From the customer table, list the first_name, last_name,
--      and email of all customers in store 1, sorted
--      alphabetically by last_name and then first_name.

SELECT first_name, last_name, email
FROM customer
WHERE store_id = 1
ORDER BY last_name ASC, first_name ASC;
