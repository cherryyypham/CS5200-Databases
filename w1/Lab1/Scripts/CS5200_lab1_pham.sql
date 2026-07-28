-- ============================================================
-- CS 5200  Database Management Systems  Summer 2026
-- Lab 1
-- Instructor: Dan Graziano
--
-- Student name:  Cherry Pham
-- Date:          05/12/2026
-- ============================================================


/*
 * Q1. Count all films in database
 */
SELECT count(*) from film --- 1000

/*
 * Q2. Show first 5 rows of film table
 */
SELECT * from film limit 5

/*
 * Q3. List every language by name from the language table
 */
select * from "language" L

/*
 * Q4. Find all of the actors with a last name that starts with ‘S’
 */
select * FROM ACTOR A WHERE A.LAST_NAME ilike 'S%'


/*
 * Q5. Find the film titled ACADEMY DINOSAUR. Show only the title, length, and rating columns.
 */
SELECT TITLE, LENGTH, RATING  FROM film WHERE TITLE ILIKE 'ACADEMY DINOSAUR'
