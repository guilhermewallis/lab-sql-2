use sakila;


-- 1. Select all the actors with the first name ‘Scarlett’
select * from actor
where first_name = 'Scarlett';

-- 2. Select all the actors with the last name ‘Johansson’
select * from actor
where last_name = 'Johansson';

-- 3. How many films (movies) are available for rent?
select count(*) from inventory;

-- 4. How many films have been rented?
select count(*) from rental;

-- 5. What is the shortest and longest rental period?
select min(rental_duration), max(rental_duration) from film;

-- 6. What are the shortest and longest movie duration?
select min(length) as min_duration,
max(length) as max_duration from film;

-- 7. What's the average movie duration?
select avg(length) from film;

-- 8. What's the average movie duration expressed in format (hours, minutes)?
select sec_to_time(avg(length) * 60) AS avg_duration from film;

-- 9. How many movies longer than 3 hours?
select count(length) from film
where length > 180;

-- 10. Get the name and email formatted
select concat(
	left(first_name, 1),
    lower(substring(first_name, 2, length(first_name))),
    ' ', last_name,
    ' - ', lower(email)
) as concat from customer;

-- 11. What's the length of the longest film title?
select max(length(title)) from film;