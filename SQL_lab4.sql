use sakila;

-- 1. Get film ratings
SELECT rating  from sakila.film;

-- 2. Get release years.
SELECT release_year  FROM sakila.film f ;

-- 3. Get all films with ARMAGEDDON in the title.
SELECT * FROM sakila.film
WHERE film.title LIKE ('%ARMAGEDDON%')

-- 4. Get all films with APOLLO in the title
SELECT * FROM sakila.film
WHERE film.title LIKE ('%APOLLO%')

-- 5. Get all films which title ends with APOLLO.
SELECT * FROM sakila.film
WHERE film.title REGEXP 'APOLLO$'

-- 6. Get all films with word DATE in the title.
SELECT * FROM sakila.film
WHERE film.title REGEXP 'DATE'

-- 7. Get 10 films with the longest title.
SELECT * FROM sakila.film
ORDER BY LENGTH(film.title) DESC
LIMIT 10;

-- 8. Get 10 the longest films.
SELECT * FROM sakila.film
ORDER BY LENGTH(film.`length`) DESC
LIMIT 10;

-- 9. How many films include Behind the Scenes content?
SELECT COUNT(*)  FROM sakila.film
WHERE film.special_features  REGEXP 'Behind the Scenes'

-- 10. List films ordered by release year and title in alphabetical order.
SELECT * FROM sakila.film
ORDER BY film.release_year, film.title;
