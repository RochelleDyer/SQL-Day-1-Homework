-- 1. How many actors are there with the last name ‘Wahlberg’?
select first_name, last_name
from actor
where last_name like 'Wahlberg';
-- There are 2 actors with the last name Wahlberg


-- 2. How many payments were made between $3.99 and $5.99?
select payment_id, amount
from payment
where amount > 3.99 and amount < 5.99;
--There were no payments in this range.


--3. What film does the store have the most of? (search in inventory)
select film_id, count (film_id)
from inventory
group by film_id
order by count desc;
-- The store has 8 of the following films:
--193, 789, 730, 378, 595, 849, 231, 586, 69, 764, 745, 1, 767, 369, 738, 638, 31, 356, 199,
--683, 127, 609, 403, 174, 266, 109, 434, 220, 239, 873, 893, 468, 525, 897, 697, 835, 773,
--945, 444, 412, 880, 846, 331, 911, 621, 301, 1000, 361, 91, 200, 358, 973, 350, 559, 86, 489,
--382, 702, 531, 856, 870, 295, 206, 73, 418, 460, 103, 341, 748, 500, 753, 572


--4. How many customers have the last name ‘William’?
select first_name, last_name
from customer
where last_name like 'William';
-- There are no customers with the last name William


--5. What store employee (get the id) sold the most rentals? 
select staff_id, count (rental_id)
from rental
group by staff_id 
order by staff_id desc;
--Store employee 1 sold the most rentals.


--6. How many different district names are there? 
select count (distinct district)
from address
--There are 378 different districts.


--7. What film has the most actors in it? (use film_actor table and get film_id)
select film_id, count (actor_id)
from film_actor
group by film_id
order by count desc;
-- Film number 508 has the most actors.


--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table) 
select first_name, last_name 
from customer
where last_name like '%es';
--There are 21 customers that have a last name ending with 'es'



--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers  with ids between 380 and 430? (use group by and having > 250) 
select customer_id, count (amount)
from payment
where customer_id between 380 and 430
group by customer_id 
having count(amount) > 250; 
--I'm not showing any results.



--10. Within the film table, how many rating categories are there? And what rating has the most  movies total?
select rating, count (film_id)
from film
group by rating 
order by count desc;
--There are 5 rating categories. PG-13 has the most movies.